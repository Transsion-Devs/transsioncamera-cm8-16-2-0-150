.class public Lcom/ss/android/ttve/nativePort/HwFrameExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mPlatform:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

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

.field ptsMs:[I

.field strMediaFile:Ljava/lang/String;

.field private threadId:J

.field time:J

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[IIIZIILcom/ss/android/vesdk/VEFrameAvailableListener;)V
    .registers 13

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->threadId:J

    .line 36
    const-string v0, "HwFrameExtractor_"

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    .line 66
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isStop:Z

    .line 67
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isWrong:Z

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "_"

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->strMediaFile:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    .line 72
    iput p3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    .line 73
    iput p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    .line 74
    iput-boolean p5, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isRough:Z

    .line 75
    iput p6, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    .line 76
    iput-object p8, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    .line 78
    :try_start_46
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->allocARGB8()V
    :try_end_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_5b

    .line 80
    :catch_4a
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string p3, "init alloc oom"

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 84
    :try_start_58
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->allocARGB8()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_89

    .line 92
    :goto_5b
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    .line 93
    :goto_60
    array-length p1, p2

    if-ge v0, p1, :cond_88

    .line 94
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    aget p3, p2, v0

    mul-int/lit16 p3, p3, 0x3e8

    aput p3, p1, v0

    .line 95
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ptsMS: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    aget p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_88
    return-void

    .line 86
    :catch_89
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;Ljava/nio/ByteBuffer;III)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrame(Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method private allocARGB8()V
    .registers 9

    .line 100
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 102
    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRGBAFrame:Lcom/ss/android/ttve/model/VEFrame;

    return-void
.end method

.method private processFrame(Ljava/nio/ByteBuffer;III)V
    .registers 9

    .line 488
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame right begin hasProcxessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ptsMsLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v1, v1

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    mul-int/2addr v1, v3

    if-ge v0, v1, :cond_9e

    iget-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isStop:Z

    if-nez v0, :cond_9e

    .line 491
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFrame right process hasProcxessCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " width "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ptsMs:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_99

    .line 494
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processFrame right stop hasProcxessCount:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length p4, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iput-boolean p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isStop:Z

    .line 496
    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    .line 498
    :cond_99
    iget p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    :cond_9e
    return-void
.end method

.method private processFrameLast()V
    .registers 7

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isStop:Z

    .line 505
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrameLast begin hasProcessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ptsMsLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_26
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v1, v1

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    mul-int/2addr v1, v3

    if-ge v0, v1, :cond_89

    .line 507
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFrameLast processing hasProcxessCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->frameAvailable:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5, v1, v3, v4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_81

    .line 510
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFrameLast stop hasProcxessCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 513
    :cond_81
    iget v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    iget v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->hasProcessCount:I

    goto :goto_26

    :cond_89
    return-void
.end method

.method private tryGetPlatformAndVersion()V
    .registers 3

    .line 467
    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mPlatform:Ljava/lang/String;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    if-nez p0, :cond_4a

    .line 468
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/common/TECPUUtils;->getHardWare()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 469
    const-string v0, "qualcomm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 470
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mPlatform:Ljava/lang/String;

    .line 472
    const-string v0, "sdm660"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 473
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    return-void

    .line 474
    :cond_25
    const-string v0, "msm8994"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 475
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    return-void

    .line 476
    :cond_30
    const-string v0, "sdm845"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 477
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    return-void

    .line 478
    :cond_3b
    const-string v0, "sm8150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 479
    sput-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    return-void

    .line 481
    :cond_46
    const-string p0, ""

    sput-object p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    :cond_4a
    return-void
.end method


# virtual methods
.method public start()V
    .registers 20

    move-object/from16 v1, p0

    .line 106
    const-string v0, ", curr-threadId = "

    :try_start_4
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v3, "method start begin"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v2, v2

    if-gtz v2, :cond_30

    .line 108
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptsMs.length is wrong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2a
    move-exception v0

    goto/16 :goto_311

    :catch_2d
    move-exception v0

    goto/16 :goto_328

    .line 112
    :cond_30
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->tryGetPlatformAndVersion()V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->time:J

    .line 114
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 115
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->strMediaFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 117
    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    .line 118
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    const/4 v6, 0x0

    move v8, v3

    move v9, v4

    move v3, v6

    const/4 v4, 0x0

    .line 119
    :goto_4c
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7

    const/4 v14, 0x2

    if-ge v3, v7, :cond_b2

    .line 120
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 121
    const-string v10, "mime"

    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 124
    const-string v4, "width"

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I

    .line 125
    const-string v4, "height"

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I

    .line 126
    const-string v4, "rotation-degrees"

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    if-eqz v4, :cond_ab

    .line 129
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    iget v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    mul-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v14

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 130
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    iget v11, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    iget v12, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    sget-object v16, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v4

    iput-object v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotatedFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 132
    iget v4, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    const/16 v10, 0x5a

    if-eq v4, v10, :cond_a7

    const/16 v10, 0x10e

    if-ne v4, v10, :cond_ab

    .line 133
    :cond_a7
    iget v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->height:I

    .line 134
    iget v9, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->width:I

    .line 137
    :cond_ab
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object v4, v7

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 141
    :cond_b2
    iget-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v3, :cond_ce

    mul-int v3, v8, v9

    mul-int/lit8 v3, v3, 0x3

    .line 142
    div-int/2addr v3, v14

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 143
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    iget v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mRotation:I

    sget-object v13, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 147
    :cond_ce
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    aget v7, v7, v6

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 153
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    .line 156
    :goto_ea
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    const/4 v12, 0x1

    if-gez v11, :cond_100

    .line 157
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v11

    if-eqz v11, :cond_100

    .line 158
    iput-boolean v12, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isWrong:Z

    move/from16 v16, v14

    goto :goto_136

    .line 161
    :cond_100
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    if-ne v11, v12, :cond_10f

    move v11, v12

    goto :goto_110

    :cond_10f
    move v11, v6

    :goto_110
    if-eqz v11, :cond_119

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_119
    iget-object v13, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v15, v13

    sub-int/2addr v15, v12

    aget v13, v13, v15

    move/from16 v16, v14

    int-to-long v14, v13

    cmp-long v9, v9, v14

    if-lez v9, :cond_12a

    if-eqz v11, :cond_12a

    add-int/lit8 v8, v8, -0x1

    .line 171
    :cond_12a
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v9

    if-eqz v9, :cond_136

    if-gtz v8, :cond_133

    goto :goto_136

    :cond_133
    move/from16 v14, v16

    goto :goto_ea

    .line 173
    :cond_136
    :goto_136
    iget-boolean v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->isWrong:Z

    if-eqz v8, :cond_145

    .line 174
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v2, "start wrong"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    return-void

    .line 180
    :cond_145
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    iget-object v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v8, v8

    new-array v9, v8, [Ljava/util/List;

    .line 182
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move v11, v6

    move v13, v11

    :goto_153
    if-ge v11, v10, :cond_19f

    .line 184
    iget-object v14, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v14, v14

    if-ge v13, v14, :cond_19f

    .line 185
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    aget v5, v5, v13

    move/from16 v17, v12

    move/from16 v18, v13

    int-to-long v12, v5

    cmp-long v5, v14, v12

    if-gez v5, :cond_178

    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v17

    move/from16 v13, v18

    goto :goto_153

    .line 188
    :cond_178
    aget-object v5, v9, v18

    if-nez v5, :cond_183

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v9, v18

    :cond_183
    move v5, v6

    .line 191
    :goto_184
    iget v12, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->consecFrameCount:I

    if-ge v5, v12, :cond_198

    add-int v12, v11, v5

    if-ge v12, v10, :cond_195

    .line 193
    aget-object v13, v9, v18

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_195
    add-int/lit8 v5, v5, 0x1

    goto :goto_184

    :cond_198
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v18, 0x1

    move/from16 v12, v17

    goto :goto_153

    :cond_19f
    move/from16 v17, v12

    .line 202
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    if-eqz v10, :cond_1db

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v9, v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v10, v17

    if-ne v5, v10, :cond_1db

    .line 203
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v11, v5

    sub-int/2addr v11, v10

    aget-object v11, v9, v11

    array-length v5, v5

    sub-int/2addr v5, v10

    aget-object v5, v9, v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    array-length v5, v5

    sub-int/2addr v5, v10

    aget-object v5, v9, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1db
    move v5, v6

    .line 208
    :goto_1dc
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1ff

    .line 209
    iget-object v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pts value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1dc

    :cond_1ff
    move v5, v6

    :goto_200
    if-ge v5, v8, :cond_237

    .line 211
    aget-object v7, v9, v5

    move v10, v6

    .line 212
    :goto_205
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_234

    .line 213
    iget-object v11, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sensArray i: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_205

    :cond_234
    add-int/lit8 v5, v5, 0x1

    goto :goto_200

    .line 216
    :cond_237
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->ptsMs:[I

    aget v5, v5, v6

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 217
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "MediaCodec Callback"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mCodecHandlerThread:Landroid/os/HandlerThread;

    .line 218
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoFramesHW: mCodecHandlerThread = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->threadId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 220
    new-instance v5, Landroid/os/Handler;

    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mCodecHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    iget-object v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v8, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;

    invoke-direct {v8, v1, v2, v9, v3}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;Landroid/media/MediaExtractor;[Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8, v5}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 340
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImageReader Callback"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 341
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoFramesHW: mReaderHandlerThread = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->threadId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I

    iget v3, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I

    const/16 v5, 0x23

    move/from16 v7, v16

    invoke-static {v2, v3, v5, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mImageReader:Landroid/media/ImageReader;

    .line 345
    new-instance v3, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;

    invoke-direct {v3, v1, v9}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$2;-><init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;[Ljava/util/List;)V

    invoke-virtual {v2, v3, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 414
    const-string v0, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v4, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 415
    sget-object v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/common/TECPUUtils;->getFps(Ljava/lang/String;)I

    move-result v0

    const v2, 0x1fa400

    mul-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcWidth:I

    div-int/2addr v0, v2

    iget v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mSrcHeight:I

    div-int/2addr v0, v2

    if-lez v0, :cond_2f8

    .line 417
    const-string v2, "operating-rate"

    invoke-virtual {v4, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 419
    :cond_2f8
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v2, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 420
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 421
    iget-object v0, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v2, "mMediaCodec start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_310
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_310} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_310} :catch_2a

    return-void

    .line 431
    :goto_311
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v3, "start crash"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    .line 434
    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    goto :goto_345

    .line 425
    :goto_328
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v3, "start crash oom"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 428
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    .line 429
    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    :goto_345
    return-void
.end method

.method public stop()V
    .registers 4

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v1, "stop begin"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_18

    .line 443
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    .line 444
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_18

    :catch_16
    move-exception v0

    goto :goto_2e

    .line 447
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1f

    .line 448
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 451
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mReaderHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_26

    .line 452
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 455
    :cond_26
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->mCodecHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2d

    .line 456
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_16

    :cond_2d
    return-void

    .line 459
    :goto_2e
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    const-string v2, "stop crash"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V

    return-void
.end method
