.class public Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mPlatform:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

.field hasProcessCount:I

.field height:I

.field isRough:Z

.field isStop:Z

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

.field m_endTime:I

.field m_startTime:I

.field strMediaFile:Ljava/lang/String;

.field private threadId:J

.field time:J

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZILcom/ss/android/vesdk/VEFrameAvailableListener;)V
    .registers 13

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->threadId:J

    .line 35
    const-string v0, "HwFrameExtractorRange_"

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    .line 67
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "_"

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    .line 72
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->m_startTime:I

    .line 73
    iput p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->m_endTime:I

    .line 74
    iput p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    .line 75
    iput p5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    .line 76
    iput-boolean p6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isRough:Z

    .line 77
    iput-object p8, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    .line 80
    :try_start_4f
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->allocARGB8()V
    :try_end_52
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_52} :catch_53

    return-void

    .line 82
    :catch_53
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string p2, "init alloc oom"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 86
    :try_start_61
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->allocARGB8()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    return-void

    .line 88
    :catch_65
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;Ljava/nio/ByteBuffer;III)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrame(Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/Object;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;

    return-object p0
.end method

.method private allocARGB8()V
    .registers 9

    .line 95
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    return-void
.end method

.method private processFrame(Ljava/nio/ByteBuffer;III)V
    .registers 8

    .line 404
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame right begin hasProcxessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    if-nez v0, :cond_75

    .line 407
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame right process hasProcxessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ptsMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p1

    if-nez p1, :cond_6f

    .line 410
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processFrame right stop hasProcxessCount:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V

    .line 413
    :cond_6f
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    :cond_75
    return-void
.end method

.method private processFrameLast()V
    .registers 6

    .line 419
    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    if-eqz v0, :cond_5

    goto :goto_43

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrameLast begin hasProcessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_43

    .line 426
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrameLast stop hasProcxessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->hasProcessCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private stopInternal()V
    .registers 4

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v1, "stop begin"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    .line 334
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_20

    .line 335
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    .line 336
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_20

    :catch_1e
    move-exception v0

    goto :goto_36

    .line 339
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_27

    .line 340
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 343
    :cond_27
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mReaderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2e

    .line 344
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 347
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v1, "stop end"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_1e

    return-void

    .line 349
    :goto_36
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v2, "stop crash"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V

    return-void
.end method

.method private tryGetPlatformAndVersion()V
    .registers 3

    .line 383
    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mPlatform:Ljava/lang/String;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    if-nez p0, :cond_4a

    .line 384
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/common/TECPUUtils;->getHardWare()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 385
    const-string v0, "qualcomm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 386
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mPlatform:Ljava/lang/String;

    .line 388
    const-string v0, "sdm660"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 389
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    return-void

    .line 390
    :cond_25
    const-string v0, "msm8994"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 391
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    return-void

    .line 392
    :cond_30
    const-string v0, "sdm845"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 393
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    return-void

    .line 394
    :cond_3b
    const-string v0, "sm8150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 395
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    return-void

    .line 397
    :cond_46
    const-string p0, ""

    sput-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    :cond_4a
    return-void
.end method


# virtual methods
.method public start()V
    .registers 18

    move-object/from16 v1, p0

    .line 102
    const-string v0, ", curr-threadId = "

    :try_start_4
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v3, "method start begin"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->tryGetPlatformAndVersion()V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->time:J

    .line 106
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 107
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    const-string v4, "content:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_63

    .line 108
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strMediaFile is content uri, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEContentProviderUtils;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 111
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEContentProviderUtils;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_68

    :catch_50
    move-exception v0

    goto/16 :goto_1d0

    :catch_53
    move-exception v0

    goto/16 :goto_1e7

    .line 113
    :cond_56
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v5, "get application failed."

    invoke-static {v3, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_68

    .line 117
    :cond_63
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 120
    :goto_68
    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    .line 121
    iget v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    const/4 v6, 0x0

    move v8, v3

    move v9, v5

    move v3, v6

    move-object v5, v4

    .line 122
    :goto_71
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7

    const/4 v14, 0x2

    if-ge v3, v7, :cond_d7

    .line 123
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 124
    const-string v10, "mime"

    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 127
    const-string v5, "width"

    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I

    .line 128
    const-string v5, "height"

    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I

    .line 129
    const-string v5, "rotation-degrees"

    invoke-virtual {v7, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    if-eqz v5, :cond_d0

    .line 132
    iget v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    iget v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    mul-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0x3

    div-int/2addr v5, v14

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 133
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 134
    iget v11, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    iget v12, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    sget-object v16, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v5

    iput-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 135
    iget v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    const/16 v10, 0x5a

    if-eq v5, v10, :cond_cc

    const/16 v10, 0x10e

    if-ne v5, v10, :cond_d0

    .line 136
    :cond_cc
    iget v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->height:I

    .line 137
    iget v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->width:I

    .line 140
    :cond_d0
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object v5, v7

    :cond_d4
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 144
    :cond_d7
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v3, :cond_f3

    mul-int v3, v8, v9

    mul-int/lit8 v3, v3, 0x3

    .line 145
    div-int/2addr v3, v14

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 146
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 147
    iget v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mRotation:I

    sget-object v13, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 150
    :cond_f3
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    .line 152
    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->m_startTime:I

    int-to-long v7, v3

    invoke-virtual {v2, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 153
    new-instance v3, Landroid/os/HandlerThread;

    const-string v7, "MediaCodec Callback"

    invoke-direct {v3, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    .line 154
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoFramesHW: mCodecHandlerThread = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->threadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 156
    new-instance v3, Landroid/os/Handler;

    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v8, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;

    invoke-direct {v8, v1, v2}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;Landroid/media/MediaExtractor;)V

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 235
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImageReader Callback"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 236
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoFramesHW: mReaderHandlerThread = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->threadId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I

    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I

    const/16 v7, 0x23

    invoke-static {v2, v3, v7, v14}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mImageReader:Landroid/media/ImageReader;

    .line 240
    new-instance v3, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;

    invoke-direct {v3, v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$2;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    invoke-virtual {v2, v3, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 302
    const-string v0, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v5, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 303
    sget-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/common/TECPUUtils;->getFps(Ljava/lang/String;)I

    move-result v0

    const v2, 0x1fa400

    mul-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcWidth:I

    div-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSrcHeight:I

    div-int/2addr v0, v2

    if-lez v0, :cond_1b8

    .line 305
    const-string v2, "operating-rate"

    invoke-virtual {v5, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 307
    :cond_1b8
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v5, v2, v4, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 308
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 309
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v2, "mMediaCodec start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_1cf} :catch_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1cf} :catch_50

    return-void

    .line 319
    :goto_1d0
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v3, "start crash"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V

    .line 322
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V

    goto :goto_204

    .line 313
    :goto_1e7
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    const-string v3, "start crash oom"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 316
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->processFrameLast()V

    .line 317
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V

    :goto_204
    return-void
.end method

.method public stopSync()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_33

    .line 358
    :try_start_4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;

    invoke-direct {v1, p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1a} :catch_2f

    .line 369
    :try_start_1a
    iget-boolean v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->isStop:Z

    if-nez v1, :cond_26

    .line 370
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2d

    .line 372
    :cond_26
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_24

    .line 374
    :try_start_27
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2f

    return-void

    .line 372
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_24

    :try_start_2e
    throw p0
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    return-void
.end method
