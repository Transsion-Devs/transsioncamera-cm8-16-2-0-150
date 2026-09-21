.class public Lcom/ss/android/medialib/AVCEncoderMark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/AVCEncoderMark$Status;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AVCEncoderMark"

.field private static TIMEOUT_USEC:I = 0x7d0

.field static mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;


# instance fields
.field private codec_config:[B

.field fileWriter:Ljava/io/BufferedOutputStream;

.field inputBuffers:[Ljava/nio/ByteBuffer;

.field mAlpha:F

.field mBottomLeft:F

.field mBottomTop:F

.field mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodecName:Ljava/lang/String;

.field mColor:I

.field private mDrawCount:I

.field private mEncodeCount:I

.field private mFlag:Z

.field mFrameRate:I

.field private mHeight:I

.field mMarginLeft:F

.field mMarginTop:F

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaCodecInfo:Landroid/media/MediaCodecInfo;

.field private mPTSQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

.field private mWidth:I

.field mXAdjust:F

.field mYAdjust:F

.field outputBuffers:[Ljava/nio/ByteBuffer;

.field status:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ss/android/medialib/AVCEncoderMark$1;

    invoke-direct {v1}, Lcom/ss/android/medialib/AVCEncoderMark$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 46
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    .line 47
    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFlag:Z

    .line 59
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mPTSQueue:Ljava/util/Queue;

    .line 60
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    const/16 v2, 0x1e

    .line 62
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFrameRate:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mAlpha:F

    const/4 v3, 0x1

    .line 65
    iput v3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mColor:I

    .line 66
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginLeft:F

    .line 67
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginTop:F

    .line 68
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomLeft:F

    .line 69
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomTop:F

    .line 71
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mXAdjust:F

    .line 72
    iput v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mYAdjust:F

    .line 329
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->fileWriter:Ljava/io/BufferedOutputStream;

    .line 330
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mDrawCount:I

    .line 331
    iput v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncodeCount:I

    return-void
.end method

.method private getMediaCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 9

    .line 104
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_2c

    .line 106
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_29

    .line 110
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 111
    :goto_18
    array-length v6, v4

    if-ge v5, v6, :cond_29

    .line 112
    aget-object v6, v4, v5

    iget-object v7, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    return-object v3

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMediaCodecInfo21()Landroid/media/MediaCodecInfo;
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 122
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 123
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 124
    array-length v2, v0

    if-nez v2, :cond_11

    goto :goto_3a

    .line 125
    :cond_11
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_3a

    aget-object v5, v0, v4

    if-eqz v5, :cond_37

    .line 126
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_37

    .line 129
    :cond_21
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v3

    .line 130
    :goto_26
    array-length v8, v6

    if-ge v7, v8, :cond_37

    .line 131
    aget-object v8, v6, v7

    iget-object v9, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    return-object v5

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_37
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_3a
    :goto_3a
    return-object v1
.end method

.method private getOneColorFormat()I
    .registers 5

    .line 169
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoderMark;->getColorFormats()[I

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    .line 174
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 175
    aget v2, p0, v1

    const v3, 0x7f000789

    if-ne v2, v3, :cond_14

    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return v0
.end method

.method public static setDrainWaitTimeout(I)V
    .registers 1

    .line 85
    sput p0, Lcom/ss/android/medialib/AVCEncoderMark;->TIMEOUT_USEC:I

    return-void
.end method


# virtual methods
.method public encode(IIIIZ)I
    .registers 12

    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v1, :cond_178

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_d

    goto/16 :goto_178

    :cond_d
    if-lez p1, :cond_158

    if-gez p3, :cond_13

    goto/16 :goto_158

    .line 344
    :cond_13
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    if-nez v0, :cond_22

    .line 345
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoderMark;->initEGLCtx()Z

    move-result v0

    if-nez v0, :cond_22

    .line 346
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception p1

    goto/16 :goto_181

    .line 352
    :cond_22
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mPTSQueue:Ljava/util/Queue;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 353
    iget p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWidth:I

    iget p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mHeight:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 355
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->drawTexture(II)V

    .line 356
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 357
    iget p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mDrawCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mDrawCount:I

    .line 359
    sget-object p1, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->onMarkSwapGlBuffers()V

    .line 361
    iget-boolean p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFlag:Z

    if-eqz p1, :cond_54

    .line 363
    iput-boolean v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFlag:Z
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_1f

    :cond_54
    const/4 p1, -0x2

    if-eqz p5, :cond_5f

    .line 368
    :try_start_57
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5d

    goto :goto_5f

    .line 370
    :catchall_5d
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_1f

    return p1

    :cond_5f
    :goto_5f
    move p3, v0

    :goto_60
    add-int/2addr p3, p2

    .line 383
    :try_start_61
    iget-object p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget v3, Lcom/ss/android/medialib/AVCEncoderMark;->TIMEOUT_USEC:I

    int-to-long v3, v3

    invoke-virtual {p4, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p4
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_156

    .line 387
    :try_start_6c
    sget-object v1, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputBufferIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBufferInfo.flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p4, v2, :cond_a9

    if-eqz p5, :cond_c4

    .line 391
    iget p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mDrawCount:I

    iget v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncodeCount:I

    if-eq p4, v1, :cond_c4

    const/16 p4, 0xa

    if-ge p3, p4, :cond_c4

    goto :goto_60

    :cond_a9
    const/4 v3, -0x3

    if-ne p4, v3, :cond_b5

    .line 396
    iget-object p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_60

    :cond_b5
    if-ne p4, p1, :cond_bd

    .line 398
    const-string p4, "encode: output format change!"

    invoke-static {v1, p4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_bd
    if-gez p4, :cond_cb

    .line 400
    const-string p1, "encode: error."

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    if-eqz p5, :cond_c9

    .line 496
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoderMark;->releaseEGLCtx()V

    .line 498
    :cond_c9
    monitor-exit p0

    return v0

    .line 406
    :cond_cb
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p3, p4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 410
    iget-object v3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v4, v3

    .line 411
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 412
    new-array v3, v4, [B

    .line 413
    invoke-virtual {p3, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 415
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_f4

    .line 417
    sget-object p3, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    if-eqz p3, :cond_ef

    .line 418
    invoke-interface {p3, v3}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->onMarkSetCodecConfig([B)V

    .line 420
    :cond_ef
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_14f

    :cond_f4
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_fa

    move p3, p2

    goto :goto_fb

    :cond_fa
    move p3, v0

    .line 427
    :goto_fb
    sget-object v4, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    if-eqz v4, :cond_14a

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode: pts queue size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_144

    .line 430
    iget v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncodeCount:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncodeCount:I

    .line 431
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 432
    sget-object v4, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v3, v5, v1, p3}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->onMarkWriteFile([BIII)V

    goto :goto_14f

    .line 435
    :cond_144
    const-string p3, "encode: no available pts!!!"

    invoke-static {v1, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14f

    .line 438
    :cond_14a
    const-string p3, "encode: no output."

    invoke-static {v1, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_14f
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p3, p4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_5f

    .line 385
    :catchall_156
    monitor-exit p0

    return p1

    .line 341
    :cond_158
    :goto_158
    sget-object p2, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "encode: invalidate params: texID = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pts = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    monitor-exit p0

    return v2

    .line 336
    :cond_178
    :goto_178
    sget-object p1, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    const-string p2, "encode: codec is not reayd."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    monitor-exit p0

    return v2

    .line 498
    :goto_181
    monitor-exit p0
    :try_end_182
    .catchall {:try_start_6c .. :try_end_182} :catchall_1f

    throw p1
.end method

.method public encode([BIZ)I
    .registers 14

    .line 505
    monitor-enter p0

    .line 506
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8e

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_c

    goto/16 :goto_8e

    :cond_c
    const-wide/16 v1, -0x1

    .line 513
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz v4, :cond_35

    .line 515
    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 517
    array-length v3, p1

    invoke-virtual {v2, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 518
    iget-object v3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    array-length v6, p1

    int-to-long v7, p2

    if-ne p3, v0, :cond_2c

    const/4 p1, 0x4

    move v9, p1

    goto :goto_2d

    :cond_2c
    move v9, v1

    :goto_2d
    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object p1, v0

    goto :goto_91

    .line 521
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget p3, Lcom/ss/android/medialib/AVCEncoderMark;->TIMEOUT_USEC:I

    int-to-long v2, p3

    invoke-virtual {p1, p2, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    :goto_40
    if-ltz p1, :cond_8c

    .line 525
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 526
    iget-object p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v2, p3

    .line 527
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    new-array p3, v2, [B

    .line 529
    invoke-virtual {p2, p3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 531
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_6b

    .line 537
    sget-object p2, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    if-eqz p2, :cond_66

    .line 538
    invoke-interface {p2, p3}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->onMarkSetCodecConfig([B)V

    .line 540
    :cond_66
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_7c

    .line 543
    :cond_6b
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int p2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_74

    move v2, v0

    goto :goto_75

    :cond_74
    move v2, v1

    .line 549
    :goto_75
    sget-object v3, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    if-eqz v3, :cond_7c

    .line 550
    invoke-interface {v3, p3, p2, v1, v2}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->onMarkWriteFile([BIII)V

    .line 555
    :cond_7c
    :goto_7c
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 557
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    goto :goto_40

    .line 619
    :cond_8c
    monitor-exit p0

    return v1

    :cond_8e
    :goto_8e
    const/4 p1, -0x1

    .line 507
    monitor-exit p0

    return p1

    .line 619
    :goto_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_32

    throw p1
.end method

.method public getColorFormats()[I
    .registers 5

    .line 142
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoderMark;->getMediaCodecInfo21()Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 146
    :cond_a
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v2, "OMX.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "OMX.Nvidia."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_40

    .line 151
    :cond_27
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 152
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, v0

    .line 153
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v0, :cond_40

    .line 155
    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_40
    :goto_40
    return-object v1
.end method

.method public initAVCEncoderMark(IIII)Landroid/view/Surface;
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/AVCEncoderMark;->initAVCEncoderMark(IIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public initAVCEncoderMark(IIIIZ)Landroid/view/Surface;
    .registers 8

    const/4 p4, 0x0

    if-nez p5, :cond_4

    return-object p4

    :cond_4
    const/4 p5, 0x0

    .line 218
    iput p5, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mDrawCount:I

    .line 219
    iput p5, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncodeCount:I

    if-lez p1, :cond_93

    if-gtz p2, :cond_f

    goto/16 :goto_93

    .line 225
    :cond_f
    iput p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWidth:I

    .line 226
    iput p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mHeight:I

    .line 228
    monitor-enter p0

    .line 231
    :try_start_14
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoderMark;->getOneColorFormat()I

    move-result p5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_26
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    if-gez p5, :cond_1e

    .line 233
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    return-object p4

    :catchall_1c
    move-exception p1

    goto :goto_91

    .line 238
    :cond_1e
    :try_start_1e
    sget-object v0, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    if-eqz v0, :cond_28

    .line 239
    invoke-interface {v0, p5}, Lcom/ss/android/medialib/AVCEncoderMarkInterface;->setColorFormatMark(I)V

    goto :goto_28

    :catch_26
    move-exception p1

    goto :goto_8c

    .line 241
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x1

    .line 242
    iput v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    .line 243
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mCodecName:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 245
    const-string p2, "color-format"

    invoke-virtual {p1, p2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 247
    const-string p2, "bitrate"

    const/high16 p5, 0x100000

    mul-int/2addr p3, p5

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 248
    const-string p2, "frame-rate"

    iget p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFrameRate:I

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 249
    const-string p2, "i-frame-interval"

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 250
    sget-object p2, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "initAVCEncoder: format = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 252
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mSurface:Landroid/view/Surface;

    .line 253
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x2

    .line 254
    iput p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    .line 261
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_84} :catch_26
    .catchall {:try_start_1e .. :try_end_84} :catchall_1c

    .line 268
    :try_start_84
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mSurface:Landroid/view/Surface;

    if-nez p1, :cond_8a

    .line 269
    monitor-exit p0

    return-object p4

    .line 271
    :cond_8a
    monitor-exit p0

    return-object p1

    .line 264
    :goto_8c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    monitor-exit p0

    return-object p4

    .line 271
    :goto_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_1c

    throw p1

    :cond_93
    :goto_93
    return-object p4
.end method

.method public initEGLCtx()Z
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_d

    .line 278
    sget-object p0, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    const-string v0, "initEGLCtx: MediaCodec should initialized ahead."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 282
    :cond_d
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mXAdjust:F

    iget v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mYAdjust:F

    invoke-static {v0, v1}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->create(FF)Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setRotation(F)V

    .line 284
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setFlipScale(FF)V

    .line 285
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    iget v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setAlpha(F)V

    .line 286
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    iget v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginLeft:F

    iget v2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginTop:F

    iget v3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomLeft:F

    iget p0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomTop:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setMargin(FFFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public releaseEGLCtx()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    if-eqz v0, :cond_a

    .line 293
    invoke-virtual {v0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->release()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    :cond_a
    return-void
.end method

.method public setBitrateMode(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 163
    const-string p0, "bitrate-mode"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method public setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderMarkInterface;)V
    .registers 2

    .line 98
    sput-object p1, Lcom/ss/android/medialib/AVCEncoderMark;->mEncoderMarkCaller:Lcom/ss/android/medialib/AVCEncoderMarkInterface;

    return-void
.end method

.method public setFrameRate(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mFrameRate:I

    return-void
.end method

.method public setMarkParam(FIFFFFFF)V
    .registers 9

    .line 184
    iput p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mAlpha:F

    .line 185
    iput p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mColor:I

    .line 186
    iput p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginLeft:F

    .line 187
    iput p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginTop:F

    .line 188
    iput p5, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomLeft:F

    .line 189
    iput p6, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomTop:F

    .line 190
    iput p7, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mXAdjust:F

    .line 191
    iput p8, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mYAdjust:F

    .line 193
    iget-object p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    if-eqz p2, :cond_24

    .line 194
    invoke-virtual {p2, p1}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setAlpha(F)V

    .line 195
    iget-object p1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mWaterMarkTextureDrawer:Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    iget p2, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginLeft:F

    iget p3, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMarginTop:F

    iget p4, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomLeft:F

    iget p0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mBottomTop:F

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setMargin(FFFF)V

    :cond_24
    return-void
.end method

.method public uninitAVCEncoderMark()V
    .registers 4

    .line 300
    monitor-enter p0

    .line 302
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->status:I

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    if-nez v1, :cond_a

    goto :goto_2b

    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 306
    :try_start_d
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_13
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_1a

    :catchall_11
    move-exception v0

    goto :goto_2d

    .line 308
    :catch_13
    :try_start_13
    sget-object v0, Lcom/ss/android/medialib/AVCEncoderMark;->TAG:Ljava/lang/String;

    const-string v1, "MediaCodec Exception"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_11

    .line 313
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_11

    :catch_1f
    const/4 v0, 0x0

    .line 318
    :try_start_20
    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mMediaCodec:Landroid/media/MediaCodec;

    .line 320
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoderMark;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_29

    .line 321
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 324
    :cond_29
    monitor-exit p0

    return-void

    .line 302
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    .line 324
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_11

    throw v0
.end method
