.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;
    }
.end annotation


# static fields
.field private static final CAPTURE_RATE:I = 0x2

.field private static final DEBUG:Z = true

.field private static final FRAME_RATE:I = 0x1e

.field private static final KEY_PENDING_LIMIT:Ljava/lang/String; = "pending-limit"

.field private static final MIME_HEVC_TYPE:Ljava/lang/String; = "video/hevc"

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MIN_FRAME_LIMIT:I = 0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TIME_LAPSE_RATE_FOR_LOOP:I = 0x186a0

.field private static final TIME_OUT_DURATION:I = 0xbb8

.field private static final VIDEO_WIDTH_4K:I = 0xf00


# instance fields
.field private mBufferWriterHandler:Landroid/os/Handler;

.field private mBufferWriterThread:Landroid/os/HandlerThread;

.field private final mCallback:Landroid/media/MediaCodec$Callback;

.field private mCodecCallbackHandler:Landroid/os/Handler;

.field private mCodecCallbackThread:Landroid/os/HandlerThread;

.field private mCurrentDuration:J

.field private final mEncoderParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

.field private final mFrameLock:Ljava/lang/Object;

.field private final mHeight:I

.field private mIsAutoTimeLapseRate:Z

.field private mIsMediaCodecReady:Z

.field private mIsVideoDurationValid:Z

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

.field private final mMaxDurationLimitMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private final mMinDurationLimitMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerPaused:Z

.field private mMuxerStarted:Z

.field private mNeedDropFrame:Z

.field private mOnPaused:Z

.field private mStopCalled:Z

.field private mTempEOSBuffer:Ljava/nio/ByteBuffer;

.field private final mTimeLapseMuxerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOrientation:I

.field private final mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBufferWriterHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBufferWriterThread(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEncoderParams(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorListener(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameLock(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAutoTimeLapseRate(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinDurationLimitMap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMinDurationLimitMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuxerPaused(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedDropFrame(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopCalled(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempEOSBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsMediaCodecReady(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempEOSBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitMuxers(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->initMuxers()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrelease(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseVideoEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IILcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;)V
    .registers 8

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMinDurationLimitMap:Landroid/util/SparseArray;

    .line 64
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Landroid/util/SparseArray;

    const/4 v3, 0x0

    .line 65
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    .line 66
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    .line 67
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    .line 68
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    .line 69
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    .line 145
    new-instance v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    .line 81
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    .line 82
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0xa

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x1e

    .line 85
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0x14

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x3c

    .line 87
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0x28

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x78

    .line 89
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p1, 0x50

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x12c

    .line 91
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "BufferWriterThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    .line 97
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "mCodecCallbackThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 99
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    .line 100
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    return-void
.end method

.method private calcBitRate(I)I
    .registers 3

    if-lez p1, :cond_3

    goto :goto_5

    :cond_3
    const/16 p1, 0xa

    .line 250
    :goto_5
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    mul-int/2addr p1, p0

    return p1
.end method

.method private checkVideoDurationValid()V
    .registers 6

    const/4 v0, 0x0

    .line 347
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 348
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 349
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->-$$Nest$fgetmFrameCount(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private configCodec(Landroid/view/Surface;I)V
    .registers 11

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 109
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v2, "0"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_hevc_encorder"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->calcBitRate(I)I

    move-result p2

    .line 113
    const-string v2, "H.265"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 115
    div-int/lit8 p2, p2, 0x2

    const-string/jumbo v1, "video/hevc"

    goto :goto_2d

    .line 113
    :cond_2a
    const-string/jumbo v1, "video/avc"

    .line 117
    :goto_2d
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    int-to-float v3, p2

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "bitRateValue=%5.2f[Mbps]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    invoke-static {v1, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 119
    const-string v4, "color-format"

    const v5, 0x7f000789

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    const-string v4, "bitrate-mode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 121
    const-string v4, "bitrate"

    invoke-virtual {v3, v4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v4, 0x1e

    .line 122
    const-string v6, "frame-rate"

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    sget v4, Lcom/transsion/camera/R$integer;->time_lapse_video_capture_rate:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_79

    .line 124
    sget v4, Lcom/transsion/camera/R$integer;->time_lapse_video_capture_rate:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 126
    :cond_79
    const-string v4, "capture-rate"

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 127
    const-string v4, "i-frame-interval"

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 128
    const-string v0, "pending-limit"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configCodec format: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",codecType: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",bitRateValue: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    if-eqz p2, :cond_b7

    .line 133
    :try_start_b2
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V

    .line 134
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b7} :catch_b7

    .line 137
    :catch_b7
    :cond_b7
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 138
    invoke-virtual {p2, v3, v0, v0, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 140
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method private createTimeLapseMuxers()V
    .registers 6

    .line 310
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTimeLapseMuxers +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 312
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 313
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    if-eqz v3, :cond_19

    goto :goto_3e

    .line 314
    :cond_19
    new-instance v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;)V

    .line 315
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->addTrack(Landroid/media/MediaFormat;)V

    .line 316
    iget v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mVideoOrientation:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->setOrientationHint(I)V

    .line 317
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_3c
    move-exception p0

    goto :goto_5a

    .line 319
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->prepared()V

    .line 322
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_3c

    .line 323
    sget-object p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createTimeLapseMuxers -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 322
    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_3c

    throw p0
.end method

.method private initMuxers()Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 273
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCurrentDuration:J

    const/4 v0, 0x0

    .line 275
    :try_start_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->createTimeLapseMuxers()V

    .line 276
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception v1

    .line 279
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "createTimeLapseMuxers Exception : "

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    .line 280
    :goto_15
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 281
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;

    invoke-interface {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 283
    :cond_2b
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 284
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    return v0
.end method

.method private release()V
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "release:"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 392
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    const/4 v2, 0x0

    .line 394
    :try_start_e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_18

    .line 395
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_2e
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception v1

    goto :goto_24

    .line 399
    :cond_18
    :goto_18
    :try_start_18
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_33

    .line 400
    :goto_1c
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 401
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_33

    :catchall_22
    move-exception p0

    goto :goto_71

    .line 399
    :goto_24
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2d

    .line 400
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 401
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 403
    :cond_2d
    throw v1

    .line 399
    :catch_2e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_33

    goto :goto_1c

    .line 404
    :cond_33
    :goto_33
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_3e

    .line 405
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 406
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->stopMuxers()V

    .line 409
    :cond_3e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 411
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_18 .. :try_end_49} :catchall_22

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_59

    .line 413
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 416
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_69

    .line 417
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 420
    :cond_69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    if-eqz p0, :cond_70

    .line 421
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_70
    return-void

    .line 411
    :goto_71
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_22

    throw p0
.end method

.method private signalEndOfInputStream()V
    .registers 4

    .line 362
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_11

    .line 365
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    goto :goto_12

    :cond_11
    return-void

    .line 368
    :goto_12
    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "sending EOS onError"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    :try_start_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    .line 372
    :catch_1e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    return-void
.end method

.method private stopMuxers()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 427
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 428
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 429
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 431
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .registers 11

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_8
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v2, :cond_a2

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_a0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 220
    :goto_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_89

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 222
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->-$$Nest$fgetmStarted(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 223
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v5, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->-$$Nest$fgetmStopWithException(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v5

    if-eqz v5, :cond_45

    return-void

    .line 227
    :cond_45
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->-$$Nest$fgetmStarted(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 228
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->getCurrentDuration()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_69

    .line 229
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->getCurrentDuration()J

    move-result-wide v3

    .line 231
    :cond_69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_86

    :goto_74
    add-int/lit8 v1, v1, 0x1

    .line 233
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_89

    .line 234
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_89
    const-wide/16 p1, 0x3e8

    .line 242
    div-long/2addr v3, p1

    iput-wide v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCurrentDuration:J

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 244
    :try_start_91
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    monitor-exit p1

    return-void

    :catchall_9d
    move-exception p0

    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw p0

    :catchall_a0
    move-exception p0

    goto :goto_a4

    .line 216
    :cond_a2
    :try_start_a2
    monitor-exit v1

    return-void

    .line 218
    :goto_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a0

    throw p0
.end method


# virtual methods
.method public getCurrentDuration()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCurrentDuration:J

    return-wide v0
.end method

.method public isVideoDurationValid()Z
    .registers 1

    .line 354
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    return p0
.end method

.method public onPause()V
    .registers 4

    .line 378
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mIsMediaCodecReady :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    .line 380
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz v0, :cond_20

    return-void

    .line 381
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_23
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_36

    .line 383
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 386
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_34

    throw p0
.end method

.method public pauseResumeRecording()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_a

    .line 292
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 294
    :cond_a
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method public setInputSurface(Landroid/view/Surface;I)V
    .registers 3

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->configCodec(Landroid/view/Surface;I)V

    return-void
.end method

.method public setRecordParams(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;",
            ">;)V"
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordParams : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_1d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 303
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz p1, :cond_3c

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->initMuxers()Z

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_3e

    .line 306
    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_3a

    throw p0
.end method

.method public setVideoOrientation(I)V
    .registers 2

    .line 255
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mVideoOrientation:I

    return-void
.end method

.method public startRecording()V
    .registers 7

    .line 259
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecording +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 261
    :try_start_b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 262
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_14
    if-ge v4, v3, :cond_24

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 263
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->start()V

    goto :goto_14

    :catchall_22
    move-exception p0

    goto :goto_34

    .line 265
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_22

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 267
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 268
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    .line 269
    sget-object p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 265
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_22

    throw p0
.end method

.method public stopRecording()V
    .registers 5

    .line 327
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording mMuxerStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 329
    :try_start_1c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    .line 330
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_48

    .line 331
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_22
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3e

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 336
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x4

    .line 337
    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 338
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_46

    .line 341
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->checkVideoDurationValid()V

    .line 342
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 343
    monitor-exit v2

    return-void

    :goto_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_3c

    throw p0

    :catchall_48
    move-exception p0

    .line 330
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method
