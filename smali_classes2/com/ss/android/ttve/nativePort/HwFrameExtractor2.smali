.class public Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mPlatform:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field bStopRequest:Z

.field consecFrameCount:I

.field frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

.field hasProcessCount:I

.field height:I

.field isRough:Z

.field isStop:Z

.field isWrong:Z

.field mCodecHandlerThread:Landroid/os/HandlerThread;

.field mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

.field mImageReader:Landroid/media/ImageReader;

.field mMediaCodec:Landroid/media/MediaCodec;

.field mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

.field mReaderHandlerThread:Landroid/os/HandlerThread;

.field mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

.field mRotation:I

.field mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

.field private mSrcHeight:I

.field private mSrcWidth:I

.field private final mSyncObject:Ljava/lang/Object;

.field private m_bIsAVC:Z

.field private m_bIsByteVC:Z

.field ptsMs:[I

.field strMediaFile:Ljava/lang/String;

.field private threadId:J

.field time:J

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[IIIZIILcom/ss/android/vesdk/VEFrameAvailableListener;)V
    .registers 13

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->threadId:J

    .line 39
    const-string v0, "HwFrameExtractor2_"

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    .line 71
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    .line 72
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->bStopRequest:Z

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isWrong:Z

    .line 75
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsAVC:Z

    .line 76
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsByteVC:Z

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "_"

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    .line 82
    iput p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    .line 83
    iput p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    .line 84
    iput-boolean p5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isRough:Z

    .line 85
    iput p6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->consecFrameCount:I

    .line 86
    iput-object p8, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    .line 89
    :try_start_53
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->allocARGB8()V
    :try_end_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_68

    .line 91
    :catch_57
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string p3, "init alloc oom"

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 95
    :try_start_65
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->allocARGB8()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_96

    .line 103
    :goto_68
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    .line 104
    :goto_6d
    array-length p1, p2

    if-ge v0, p1, :cond_95

    .line 105
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    aget p3, p2, v0

    mul-int/lit16 p3, p3, 0x3e8

    aput p3, p1, v0

    .line 106
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ptsMS: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    aget p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_95
    return-void

    .line 97
    :catch_96
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsAVC:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsByteVC:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    return-void
.end method

.method static synthetic access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;Ljava/nio/ByteBuffer;III)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrame(Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/Object;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;

    return-object p0
.end method

.method private allocARGB8()V
    .registers 9

    .line 111
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    return-void
.end method

.method private processFrame(Ljava/nio/ByteBuffer;III)V
    .registers 8

    .line 581
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v1, v1

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->consecFrameCount:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_42

    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    if-nez v0, :cond_42

    .line 583
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 585
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processFrame right stop hasProcxessCount:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ptsMsLength: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V

    .line 588
    :cond_3c
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    :cond_42
    return-void
.end method

.method private processFrameLast()V
    .registers 7

    .line 594
    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    if-eqz v0, :cond_5

    goto :goto_69

    .line 600
    :cond_5
    :goto_5
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v1, v1

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->consecFrameCount:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_69

    .line 601
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrameLast processing hasProcxessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ptsMsLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5, v1, v3, v4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_62

    .line 604
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFrameLast stop hasProcxessCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 607
    :cond_62
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->hasProcessCount:I

    goto :goto_5

    :cond_69
    :goto_69
    return-void
.end method

.method private stopInternal()V
    .registers 4

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v1, "stop begin"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    .line 508
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_20

    .line 509
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    .line 510
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_20

    :catch_1e
    move-exception v0

    goto :goto_36

    .line 513
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_27

    .line 514
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 517
    :cond_27
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mReaderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2e

    .line 518
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 521
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v1, "stop end"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_1e

    return-void

    .line 523
    :goto_36
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v2, "stop crash"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    return-void
.end method

.method private tryGetPlatformAndVersion()V
    .registers 3

    .line 558
    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mPlatform:Ljava/lang/String;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    if-nez p0, :cond_4a

    .line 559
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/common/TECPUUtils;->getHardWare()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 560
    const-string v0, "qualcomm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 561
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mPlatform:Ljava/lang/String;

    .line 563
    const-string v0, "sdm660"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 564
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    return-void

    .line 565
    :cond_25
    const-string v0, "msm8994"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 566
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    return-void

    .line 567
    :cond_30
    const-string v0, "sdm845"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 568
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    return-void

    .line 569
    :cond_3b
    const-string v0, "sm8150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 570
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    return-void

    .line 572
    :cond_46
    const-string p0, ""

    sput-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    :cond_4a
    return-void
.end method


# virtual methods
.method public start()V
    .registers 21

    move-object/from16 v1, p0

    .line 118
    const-string v6, ", curr-threadId = "

    const-string v0, "rotation-degrees"

    :try_start_6
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v3, "method start begin"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v2, v2

    if-gtz v2, :cond_32

    .line 120
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptsMs.length is wrong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2c
    move-exception v0

    goto/16 :goto_377

    :catch_2f
    move-exception v0

    goto/16 :goto_38e

    :cond_32
    const/4 v7, 0x0

    .line 124
    iput-boolean v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->bStopRequest:Z

    .line 126
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->tryGetPlatformAndVersion()V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->time:J

    .line 128
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 129
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    const-string v4, "content:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_87

    .line 130
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strMediaFile is content uri, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEContentProviderUtils;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 133
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEContentProviderUtils;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    iget-object v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_8c

    .line 135
    :cond_7a
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v4, "get application failed."

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_8c

    .line 139
    :cond_87
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 142
    :goto_8c
    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    .line 143
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    move v10, v3

    move v11, v4

    move v3, v7

    move-object v4, v8

    .line 144
    :goto_94
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v5
    :try_end_98
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_98} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_98} :catch_2c

    const-string v9, "video/avc"

    const/4 v12, 0x2

    if-ge v3, v5, :cond_110

    .line 145
    :try_start_9d
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 146
    const-string v13, "mime"

    invoke-virtual {v5, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 147
    const-string v14, "video"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10d

    .line 148
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsAVC:Z

    .line 150
    const-string v4, "video/hevc"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->m_bIsByteVC:Z

    .line 153
    const-string v4, "width"

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I

    .line 154
    const-string v4, "height"

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I

    .line 155
    invoke-virtual {v5, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 156
    invoke-virtual {v5, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    .line 158
    :cond_d9
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    if-eqz v4, :cond_109

    .line 160
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    iget v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    mul-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v12

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 161
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    iget v13, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    iget v14, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    sget-object v18, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v4

    iput-object v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 163
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    const/16 v9, 0x5a

    if-eq v4, v9, :cond_105

    const/16 v9, 0x10e

    if-ne v4, v9, :cond_109

    .line 164
    :cond_105
    iget v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->height:I

    .line 165
    iget v11, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->width:I

    .line 168
    :cond_109
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object v4, v5

    :cond_10d
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 172
    :cond_110
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v0, :cond_133

    mul-int v0, v10, v11

    mul-int/lit8 v0, v0, 0x3

    .line 173
    div-int/2addr v0, v12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v3, v12

    .line 175
    iget v12, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mRotation:I

    sget-object v15, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v13, 0x0

    move-object/from16 v19, v9

    move-object v9, v0

    move-object/from16 v0, v19

    invoke-static/range {v9 .. v15}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v5

    iput-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_135

    :cond_133
    move-object v0, v9

    move v3, v12

    .line 178
    :goto_135
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    aget v0, v0, v7

    int-to-long v9, v0

    invoke-virtual {v2, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->consecFrameCount:I

    .line 187
    :cond_14f
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    const/4 v13, 0x1

    if-gez v12, :cond_163

    .line 188
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v12

    if-eqz v12, :cond_163

    .line 189
    iput-boolean v13, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isWrong:Z

    goto :goto_193

    .line 192
    :cond_163
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v12

    if-ne v12, v13, :cond_172

    move v12, v13

    goto :goto_173

    :cond_172
    move v12, v7

    :goto_173
    if-eqz v12, :cond_17c

    .line 196
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_17c
    iget-object v14, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v15, v14

    sub-int/2addr v15, v13

    aget v14, v14, v15

    int-to-long v14, v14

    cmp-long v10, v10, v14

    if-lez v10, :cond_18b

    if-eqz v12, :cond_18b

    add-int/lit8 v9, v9, -0x1

    .line 202
    :cond_18b
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v10

    if-eqz v10, :cond_193

    if-gtz v9, :cond_14f

    .line 204
    :cond_193
    :goto_193
    iget-boolean v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isWrong:Z

    if-eqz v9, :cond_1a2

    .line 205
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v2, "start wrong"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    return-void

    .line 211
    :cond_1a2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v9, v3

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v10, v10

    move-object v11, v4

    new-array v4, v10, [Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    move v14, v7

    move v15, v14

    :goto_1b7
    if-ge v14, v12, :cond_207

    move/from16 v16, v9

    .line 216
    iget-object v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v9, v9

    if-ge v15, v9, :cond_209

    .line 217
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    aget v9, v9, v15

    int-to-long v8, v9

    cmp-long v8, v17, v8

    if-gez v8, :cond_1d9

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v16

    :goto_1d7
    const/4 v8, 0x0

    goto :goto_1b7

    .line 220
    :cond_1d9
    aget-object v8, v4, v15

    if-nez v8, :cond_1e4

    .line 221
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v4, v15

    :cond_1e4
    move v8, v7

    .line 223
    :goto_1e5
    iget v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->consecFrameCount:I

    if-ge v8, v9, :cond_1ff

    add-int v9, v14, v8

    if-ge v9, v12, :cond_1fb

    .line 225
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 226
    aget-object v7, v4, v15

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1fb
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_1e5

    :cond_1ff
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    const/4 v7, 0x0

    goto :goto_1d7

    :cond_207
    move/from16 v16, v9

    .line 236
    :cond_209
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v8, v7

    sub-int/2addr v8, v13

    aget-object v8, v4, v8

    if-eqz v8, :cond_24d

    array-length v7, v7

    sub-int/2addr v7, v13

    aget-object v7, v4, v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v13, :cond_24d

    .line 237
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v8, v7

    sub-int/2addr v8, v13

    aget-object v8, v4, v8

    array-length v7, v7

    sub-int/2addr v7, v13

    aget-object v7, v4, v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    array-length v7, v7

    sub-int/2addr v7, v13

    aget-object v7, v4, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x0

    invoke-interface {v7, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24d
    const/4 v0, 0x0

    :goto_24e
    if-ge v0, v10, :cond_285

    .line 246
    aget-object v7, v4, v0

    const/4 v8, 0x0

    .line 247
    :goto_253
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_282

    .line 248
    iget-object v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sensArray i: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_253

    :cond_282
    add-int/lit8 v0, v0, 0x1

    goto :goto_24e

    .line 251
    :cond_285
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->ptsMs:[I

    const/4 v9, 0x0

    aget v0, v0, v9

    int-to-long v7, v0

    invoke-virtual {v2, v7, v8, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 252
    new-instance v0, Landroid/os/HandlerThread;

    const-string v7, "MediaCodec Callback"

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    .line 253
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoFramesHW: mCodecHandlerThread = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->threadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 255
    new-instance v7, Landroid/os/Handler;

    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    iget-object v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;

    move/from16 v9, v16

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;Landroid/media/MediaExtractor;Ljava/util/List;[Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v0, v7}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 401
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ImageReader Callback"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 402
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoFramesHW: mReaderHandlerThread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->threadId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 405
    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I

    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I

    const/16 v5, 0x23

    invoke-static {v2, v3, v5, v9}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mImageReader:Landroid/media/ImageReader;

    .line 406
    new-instance v3, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;

    invoke-direct {v3, v1, v4}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$2;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;[Ljava/util/List;)V

    invoke-virtual {v2, v3, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 475
    const-string v0, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v11, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 476
    sget-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/common/TECPUUtils;->getFps(Ljava/lang/String;)I

    move-result v0

    const v2, 0x1fa400

    mul-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcWidth:I

    div-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSrcHeight:I

    div-int/2addr v0, v2

    if-lez v0, :cond_35d

    .line 478
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract frame targetFps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "operating-rate"

    invoke-virtual {v11, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 481
    :cond_35d
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v11, v2, v3, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 482
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 483
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v2, "mMediaCodec start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_376
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_376} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_376} :catch_2c

    return-void

    .line 493
    :goto_377
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v3, "start crash"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    .line 496
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V

    goto :goto_3ab

    .line 487
    :goto_38e
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    const-string v3, "start crash oom"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 490
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->processFrameLast()V

    .line 491
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V

    :goto_3ab
    return-void
.end method

.method public stopSync()V
    .registers 3

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->bStopRequest:Z

    .line 531
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_36

    .line 533
    :try_start_7
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;

    invoke-direct {v1, p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_1d} :catch_32

    .line 544
    :try_start_1d
    iget-boolean v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->isStop:Z

    if-nez v1, :cond_29

    .line 545
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_30

    .line 547
    :cond_29
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_27

    .line 549
    :try_start_2a
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_32

    return-void

    .line 547
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_27

    :try_start_31
    throw p0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 552
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    return-void
.end method
