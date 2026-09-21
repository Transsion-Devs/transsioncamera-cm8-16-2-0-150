.class public Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;,
        Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;,
        Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$TEMediaCodecType;
    }
.end annotation


# static fields
.field private static final ERROR_CONFIGURE_EXCEPTION:I = -0x4

.field private static final ERROR_CREATE_FAIL_BECAUSE_OF_HW_OVERLOAD:I = -0x68

.field private static final ERROR_CREATE_FAIL_GL_ERROR:I = -0x69

.field private static final ERROR_EOF:I = -0x1

.field private static final ERROR_MEDIA_CODEC_FAILED:I = -0x2

.field private static final ERROR_MEDIA_FORMAT_ERROR:I = -0x5

.field private static final ERROR_NEW_IMAGE_WAIT_FAIL:I = -0x67

.field private static final ERROR_NONE:I = 0x0

.field private static final ERROR_RECEIVE_OUTPUT_TRY_AGAIN:I = -0x66

.field private static final ERROR_SEND_INPUT_FAIL:I = -0x65

.field private static final ERROR_UNUSUAL:I = -0x3

.field private static final FIX_VERSION:D = 0.18041

.field private static final TAG:Ljava/lang/String; = "TEMediaCodecDecoder"

.field private static final VERSION_PROPERTY:Ljava/lang/String; = "ro.config.hw_codec_support"

.field private static file_count:I = 0x0

.field private static mCodecListLock:Ljava/lang/Object; = null

.field private static mIsByteVC1Blocklist:Z = false

.field private static mVideoHWDecoderCodecs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_useCreateDecoderByName:Z = false

.field private static volatile sDequeueHWDecodeInputBufferOpt:Z = false

.field private static sDequeueOutputTimeoutUs:I = 0x2710

.field private static sHWDecodeSupportRtAndOr:Z = false

.field private static sPendingInputBufferThreshold:I = 0x5


# instance fields
.field private final MAX_DELAY_COUNT:I

.field private final MAX_SLEEP_MS:J

.field private VIDEO_MIME_TYPE:Ljava/lang/String;

.field private mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mMinCompressionRatio:I

.field private mReaderHandlerThread:Landroid/os/HandlerThread;

.field private mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

.field private m_MediaCodechandler:Landroid/os/Handler;

.field private m_ReEncodeOptCV:Landroid/os/ConditionVariable;

.field private volatile m_awaitNewImageSuccess:Z

.field private m_bGlobalDecoderPoolOption:I

.field private m_bHWOverload:Z

.field private m_bNeedConfigure:Z

.field private volatile m_bReEnableOpt:Z

.field private m_bUseImageReader:Z

.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_codecSpecificData:Ljava/nio/ByteBuffer;

.field private m_decoder:Landroid/media/MediaCodec;

.field private volatile m_decoderStarted:Z

.field private m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

.field private m_extraDataBuf:Ljava/nio/ByteBuffer;

.field private m_format:Landroid/media/MediaFormat;

.field private m_frameAvailable:Z

.field private final m_frameSyncObject:Ljava/lang/Object;

.field private m_handleThread:Landroid/os/HandlerThread;

.field private m_iCodecID:I

.field private m_iCurCount:I

.field private m_iFps:I

.field private m_iHeight:I

.field private m_iOutputHeight:I

.field private m_iOutputWidth:I

.field private m_iRotateDegree:I

.field private m_iWidth:I

.field private m_indexOfOutputBuffer:I

.field private volatile m_inputBufferQueued:Z

.field private m_nativeHandler:J

.field private m_needSendPacketAgain:Z

.field private volatile m_pendingInputFrameCount:I

.field private m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

.field private volatile m_sawInputEOS:Z

.field private volatile m_sawOutputEOS:Z

.field private m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceTexID:[I

.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

.field private volatile m_timestampOfCurTexFrame:J

.field private volatile m_timestampOfLastDecodedFrame:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mCodecListLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 141
    sput-boolean v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mIsByteVC1Blocklist:Z

    const/4 v1, 0x1

    .line 164
    sput-boolean v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_useCreateDecoderByName:Z

    .line 168
    sput-boolean v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueHWDecodeInputBufferOpt:Z

    .line 175
    sput-boolean v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sHWDecodeSupportRtAndOr:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    .line 93
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    const/16 v1, 0x1c

    .line 94
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I

    .line 95
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    .line 96
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    .line 97
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    .line 98
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    .line 99
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_extraDataBuf:Ljava/nio/ByteBuffer;

    .line 101
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_codecSpecificData:Ljava/nio/ByteBuffer;

    .line 102
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    .line 103
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bGlobalDecoderPoolOption:I

    .line 105
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    .line 107
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    .line 108
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 109
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surface:Landroid/view/Surface;

    .line 111
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 113
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoderStarted:Z

    .line 116
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    .line 117
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    const-wide/high16 v3, -0x8000000000000000L

    .line 119
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    .line 120
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 121
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    .line 122
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 123
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    .line 124
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    .line 126
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    .line 128
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    .line 129
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 130
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "VE-MediaCodecHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_handleThread:Landroid/os/HandlerThread;

    .line 133
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 134
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImageReader:Landroid/media/ImageReader;

    .line 135
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    .line 136
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 137
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    const-wide/16 v3, 0x0

    .line 149
    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->MAX_SLEEP_MS:J

    const/16 v1, 0xa

    .line 150
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->MAX_DELAY_COUNT:I

    .line 151
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCurCount:I

    .line 153
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    .line 154
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_awaitNewImageSuccess:Z

    const/4 v1, -0x1

    .line 166
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_indexOfOutputBuffer:I

    .line 170
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    .line 171
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    .line 172
    new-instance v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    invoke-direct {v1, p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;-><init>(Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;)V

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    .line 174
    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mMinCompressionRatio:I

    .line 176
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bHWOverload:Z

    return-void
.end method

.method private AwaitNewImage(I)Z
    .registers 7

    .line 1230
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1231
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    .line 1235
    :try_start_8
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1236
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    if-nez v1, :cond_3

    .line 1238
    const-string p0, "TEMediaCodecDecoder"

    const-string p1, "Frame wait timed out!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_19} :catch_1d
    .catchall {:try_start_8 .. :try_end_19} :catchall_1b

    .line 1239
    :try_start_19
    monitor-exit v0

    return v2

    :catchall_1b
    move-exception p0

    goto :goto_42

    :catch_1d
    move-exception p0

    .line 1243
    const-string p1, "TEMediaCodecDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1245
    monitor-exit v0

    return v2

    .line 1249
    :cond_3d
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    .line 1250
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_1b

    throw p0
.end method

.method private IsValid()Z
    .registers 1

    .line 985
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static checkHDVideoCanFastImport(III)Z
    .registers 6

    .line 697
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_mediacodec_resource_reasonable_distribute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    .line 700
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->checkCanFastImport(III)Z

    move-result p0

    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private configureMediaFormat()I
    .registers 10

    .line 558
    const-string v0, " x "

    const-string v1, "TEMediaCodecDecoder"

    .line 560
    :try_start_4
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-static {v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMediaCodecInfo21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_16

    .line 562
    const-string p0, "MediaCodecInfo is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    :catch_13
    move-exception p0

    goto/16 :goto_160

    .line 566
    :cond_16
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_3c

    .line 567
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    const-string v5, "adaptive-playback"

    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediacodec supports adaptive playback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureMediaFormat , size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I

    const/16 v5, 0xae

    if-eq v3, v4, :cond_98

    if-eq v3, v5, :cond_98

    .line 575
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v3

    if-nez v3, :cond_98

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is not size support! width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    .line 581
    :cond_98
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-static {v3, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    .line 582
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->isSupportByteVC10bit()Z

    move-result v3

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupport10bit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_codecSpecificData:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_c7

    .line 586
    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    const-string v7, "csd-0"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 589
    :cond_c7
    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-eqz v3, :cond_d5

    .line 590
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    const-string v6, "color-format"

    const v7, 0x7f420888

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 596
    :cond_d5
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d7} :catch_13

    const-string v6, "max-input-size"

    if-ne v5, v3, :cond_e6

    .line 597
    :try_start_db
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_fe

    :cond_e6
    if-ne v4, v3, :cond_fe

    .line 603
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    const/16 v7, 0x10

    invoke-static {v4, v7}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v4

    iget v8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    .line 604
    invoke-static {v8, v7}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v7

    mul-int/2addr v4, v7

    mul-int/lit16 v4, v4, 0x100

    .line 603
    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 606
    :cond_fe
    :goto_fe
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    const-string v4, "frame-rate"

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 608
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v3

    const-string v4, "ve_hwdecode_support_rt_and_or"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sHWDecodeSupportRtAndOr:Z

    if-eqz v3, :cond_126

    .line 611
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    const-string v4, "priority"

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 612
    const-string v3, "set real-time and operating-rate"

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_126
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I

    if-ne v5, v3, :cond_15f

    .line 616
    invoke-direct {p0, v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->isSupportSize(Landroid/media/MediaCodecInfo;)Z

    move-result v2

    if-nez v2, :cond_15f

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureMediaFormat, failed, case VIDEO_MIME_TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_15d} :catch_13

    const/4 p0, -0x5

    return p0

    :cond_15f
    return v6

    .line 622
    :goto_160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconfigureMediaFormat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x4

    return p0
.end method

.method public static convertTexToBitmap(III)Landroid/graphics/Bitmap;
    .registers 4

    .line 1637
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->readTextureToByteBuffer(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1638
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1639
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method private createTexture()I
    .registers 5

    .line 762
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 764
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aget v0, v0, v2

    if-gtz v0, :cond_15

    .line 765
    const-string p0, "TEMediaCodecDecoder"

    const-string v0, "createTexture failed"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_15
    const v1, 0x8d65

    .line 769
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 771
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 773
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 775
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 777
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 780
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aget p0, p0, v2

    return p0
.end method

.method private decodeFrame2Surface([BIJ)I
    .registers 30

    move-object/from16 v1, p0

    move/from16 v5, p2

    .line 1256
    sget v9, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sPendingInputBufferThreshold:I

    .line 1257
    sget v10, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueOutputTimeoutUs:I

    const/4 v11, 0x0

    .line 1260
    iput-boolean v11, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    if-nez v5, :cond_f

    move v0, v10

    goto :goto_10

    :cond_f
    move v0, v11

    .line 1264
    :goto_10
    iget-boolean v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    const-string v12, ""

    const/4 v13, -0x2

    const/4 v14, 0x1

    const-string v15, "TEMediaCodecDecoder"

    if-nez v2, :cond_e9

    .line 1266
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    sget-boolean v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueHWDecodeInputBufferOpt:Z

    if-eqz v3, :cond_22

    int-to-long v3, v0

    goto :goto_23

    :cond_22
    int-to-long v3, v10

    :goto_23
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    move v2, v11

    :cond_28
    if-gez v0, :cond_5e

    .line 1268
    sget-boolean v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueHWDecodeInputBufferOpt:Z

    if-eqz v3, :cond_30

    if-nez v5, :cond_5e

    :cond_30
    const-wide/16 v3, 0x5

    .line 1270
    :try_start_32
    invoke-static {v3, v4, v11}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1274
    :goto_3a
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    int-to-long v3, v10

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    add-int/2addr v2, v14

    const/16 v3, 0x14

    if-lt v2, v3, :cond_28

    .line 1277
    new-instance v3, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v4, "tryCount ="

    .line 1278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2, v12}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v2

    .line 1277
    const-string v3, "decodeFrame2Surface try dequeueInputBuffer timeout --"

    invoke-static {v15, v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    move v3, v0

    if-ltz v3, :cond_e2

    .line 1286
    invoke-direct {v1, v3}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getInputBufferByIdx(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v5, :cond_80

    .line 1290
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v3

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1291
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    .line 1292
    const-string v0, "RenderInput EOS"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_80
    move/from16 v17, v3

    .line 1294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1295
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v5, :cond_ca

    .line 1296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputBuf.capacity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < inputSize: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", m_pendingInputFrameCount"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width * height: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_ca
    move-object/from16 v2, p1

    .line 1300
    invoke-virtual {v0, v2, v11, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1302
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-wide/from16 v6, p3

    move/from16 v3, v17

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1306
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    .line 1307
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    add-int/2addr v0, v14

    iput v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    goto :goto_e9

    .line 1311
    :cond_e2
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    .line 1312
    const-string v0, "RenderInput buffer not available"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :cond_e9
    :goto_e9
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-eqz v0, :cond_f0

    mul-int/lit8 v10, v10, 0x14

    goto :goto_f6

    .line 1320
    :cond_f0
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    if-le v0, v9, :cond_f5

    goto :goto_f6

    :cond_f5
    move v10, v11

    .line 1332
    :goto_f6
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v3, v10

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_103

    goto :goto_f6

    :cond_103
    if-ne v0, v13, :cond_1d0

    .line 1337
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1338
    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 1339
    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 1340
    const-string v4, "crop-left"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 1341
    const-string v5, "crop-right"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v14

    .line 1342
    const-string v6, "crop-top"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 1343
    const-string v7, "crop-bottom"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    sub-int v7, v5, v4

    .line 1345
    iput v7, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    sub-int v8, v0, v6

    .line 1346
    iput v8, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    .line 1349
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v9

    move/from16 v23, v13

    const-string v13, "ve_anable_codec2_output_format_align_16"

    invoke-virtual {v9, v13, v11}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_178

    .line 1351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outputFormat width: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", height: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", align to 16"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x10

    .line 1352
    invoke-static {v2, v9}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v2

    mul-int/2addr v2, v9

    .line 1353
    invoke-static {v3, v9}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v3

    mul-int/2addr v3, v9

    .line 1356
    :cond_178
    iget-boolean v9, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-eqz v9, :cond_1b0

    if-lez v2, :cond_1b0

    if-lez v3, :cond_1b0

    .line 1357
    iget-object v9, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    new-instance v13, Landroid/graphics/RectF;

    move/from16 v24, v11

    int-to-float v11, v4

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v11, v11, v16

    int-to-float v14, v2

    div-float/2addr v11, v14

    move/from16 v17, v2

    int-to-float v2, v6

    mul-float v2, v2, v16

    move/from16 p1, v2

    int-to-float v2, v3

    move/from16 v18, v2

    div-float v2, p1, v18

    move/from16 p1, v3

    int-to-float v3, v5

    mul-float v3, v3, v16

    div-float/2addr v3, v14

    int-to-float v14, v0

    mul-float v14, v14, v16

    div-float v14, v14, v18

    invoke-direct {v13, v11, v2, v3, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v13, v9, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->cropRect:Landroid/graphics/RectF;

    .line 1358
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    iput v7, v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameWidth:I

    .line 1359
    iput v8, v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameHeight:I

    goto :goto_1b6

    :cond_1b0
    move/from16 v17, v2

    move/from16 p1, v3

    move/from16 v24, v11

    .line 1361
    :goto_1b6
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    if-eqz v2, :cond_1c9

    move/from16 v18, p1

    move/from16 v20, v0

    move-object/from16 v16, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v19, v6

    .line 1362
    invoke-virtual/range {v16 .. v22}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->setTextureCrop(IIIIII)V

    :cond_1c9
    move/from16 v13, v23

    move/from16 v11, v24

    const/4 v14, 0x1

    goto/16 :goto_f6

    :cond_1d0
    move/from16 v24, v11

    move/from16 v23, v13

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1df

    .line 1373
    const-string v0, "No output from decoder available"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x66

    return v0

    :cond_1df
    if-gez v0, :cond_1fa

    .line 1376
    new-instance v1, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v2, "decoderStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0, v12}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v0

    const-string v1, "Unexpected result from decoder.dequeueOutputBuffer"

    invoke-static {v15, v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v23

    .line 1379
    :cond_1fa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Surface decoder given buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")  (pts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v3, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_23c

    .line 1384
    const-string v3, "DisplayView EOS"

    invoke-static {v15, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1385
    iput-boolean v3, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    goto :goto_23d

    :cond_23c
    const/4 v3, 0x1

    .line 1389
    :goto_23d
    iget-boolean v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-nez v4, :cond_264

    .line 1391
    iget-object v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    .line 1392
    iget v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 1393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending input frame count decreased: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_266

    :cond_264
    move/from16 v4, v24

    .line 1399
    :goto_266
    iget v5, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bGlobalDecoderPoolOption:I

    const/16 v6, -0x69

    if-lez v5, :cond_28d

    move/from16 v5, v24

    .line 1401
    :goto_26e
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v7

    if-eqz v7, :cond_28a

    .line 1402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before releaseOutputBuffer, glError:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    goto :goto_26e

    :cond_28a
    if-eqz v5, :cond_28f

    return v6

    :cond_28d
    move/from16 v5, v24

    .line 1411
    :cond_28f
    iget-object v7, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v4, :cond_2f3

    .line 1413
    const-string v0, "Rendering decoded frame to surface texture."

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f4

    .line 1415
    invoke-direct {v1, v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->AwaitNewImage(I)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 1417
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 1419
    :goto_2a9
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2c5

    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after releaseOutputBuffer, glError:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    goto :goto_2a9

    :cond_2c5
    if-eqz v5, :cond_2cc

    .line 1423
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bGlobalDecoderPoolOption:I

    if-lez v0, :cond_2cc

    return v6

    .line 1427
    :cond_2cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface texture updated, pts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v24

    .line 1430
    :cond_2e3
    const-string v0, "Render decoded frame to surface texture failed!"

    move/from16 v1, v24

    new-array v1, v1, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    invoke-static {v15, v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x67

    return v0

    :cond_2f3
    return v2
.end method

.method private decodeFrameWithInputOutput([BIJ)I
    .registers 29

    move-object/from16 v1, p0

    move/from16 v5, p2

    .line 1447
    sget v9, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sPendingInputBufferThreshold:I

    .line 1448
    sget v10, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueOutputTimeoutUs:I

    const/4 v11, 0x0

    .line 1451
    iput-boolean v11, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    if-nez v5, :cond_f

    move v0, v10

    goto :goto_10

    :cond_f
    move v0, v11

    .line 1455
    :goto_10
    iget-boolean v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    const/4 v12, -0x2

    const-string v13, ""

    const/4 v14, 0x1

    const-string v15, "TEMediaCodecDecoder"

    if-nez v2, :cond_104

    .line 1457
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    sget-boolean v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueHWDecodeInputBufferOpt:Z

    if-eqz v3, :cond_22

    int-to-long v3, v0

    goto :goto_23

    :cond_22
    int-to-long v3, v10

    :goto_23
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    move v2, v11

    :cond_28
    if-gez v0, :cond_69

    .line 1459
    sget-boolean v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->sDequeueHWDecodeInputBufferOpt:Z

    if-eqz v3, :cond_30

    if-nez v5, :cond_69

    :cond_30
    const-wide/16 v3, 0x5

    .line 1461
    :try_start_32
    invoke-static {v3, v4, v11}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 1463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1465
    :goto_3a
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    int-to-long v3, v10

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    add-int/2addr v2, v14

    const/16 v3, 0x14

    if-lt v2, v3, :cond_28

    .line 1468
    new-instance v3, Lcom/ss/android/vesdk/VELogUtil$LogData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "try dequeueInputBuffer timeout"

    invoke-direct {v3, v4, v2, v13}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v2

    const-string v3, "decodeFrameWithInputOutput"

    invoke-static {v15, v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    move v3, v0

    if-ltz v3, :cond_ee

    .line 1475
    invoke-direct {v1, v3}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getInputBufferByIdx(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v5, :cond_8c

    .line 1479
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v3

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1480
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    .line 1481
    const-string v0, "RenderInput EOS"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_104

    :cond_8c
    move/from16 v17, v3

    .line 1483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1484
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v5, :cond_d6

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputBuf.capacity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < inputSize: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", m_pendingInputFrameCount"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width * height: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_d6
    move-object/from16 v2, p1

    .line 1489
    invoke-virtual {v0, v2, v11, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1491
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-wide/from16 v6, p3

    move/from16 v3, v17

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1495
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    .line 1496
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    add-int/2addr v0, v14

    iput v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    goto :goto_104

    .line 1500
    :cond_ee
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderInput buffer not available, inputSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :cond_104
    :goto_104
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-eqz v0, :cond_10b

    mul-int/lit8 v10, v10, 0x14

    goto :goto_111

    .line 1509
    :cond_10b
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    if-le v0, v9, :cond_110

    goto :goto_111

    :cond_110
    move v10, v11

    .line 1521
    :goto_111
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v3, v10

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_11e

    goto :goto_111

    :cond_11e
    if-ne v0, v12, :cond_1ea

    .line 1526
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1527
    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 1528
    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 1529
    const-string v4, "crop-left"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 1530
    const-string v6, "crop-right"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v14

    .line 1531
    const-string v7, "crop-top"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 1532
    const-string v8, "crop-bottom"

    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    .line 1535
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v8

    const-string v9, "ve_anable_codec2_output_format_align_16"

    invoke-virtual {v8, v9, v11}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_189

    .line 1537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "outputFormat width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", align to 16"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x10

    .line 1538
    invoke-static {v2, v8}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v2

    mul-int/2addr v2, v8

    .line 1539
    invoke-static {v3, v8}, Lcom/ss/android/vesdk/VEMathUtil;->ceilDivide(II)I

    move-result v3

    mul-int/2addr v3, v8

    :cond_189
    sub-int v8, v6, v4

    .line 1542
    iput v8, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    sub-int v9, v0, v7

    .line 1543
    iput v9, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    .line 1545
    iget-boolean v11, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-eqz v11, :cond_1cb

    if-lez v2, :cond_1cb

    if-lez v3, :cond_1cb

    .line 1546
    iget-object v11, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    move/from16 v23, v12

    new-instance v12, Landroid/graphics/RectF;

    int-to-float v14, v4

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v14, v14, v16

    move/from16 v21, v4

    int-to-float v4, v2

    div-float/2addr v14, v4

    move/from16 v17, v2

    int-to-float v2, v7

    mul-float v2, v2, v16

    move/from16 p1, v2

    int-to-float v2, v3

    move/from16 v18, v2

    div-float v2, p1, v18

    move/from16 p1, v3

    int-to-float v3, v6

    mul-float v3, v3, v16

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v16

    div-float v4, v4, v18

    invoke-direct {v12, v14, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v12, v11, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->cropRect:Landroid/graphics/RectF;

    .line 1547
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    iput v8, v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameWidth:I

    .line 1548
    iput v9, v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->frameHeight:I

    goto :goto_1d3

    :cond_1cb
    move/from16 v17, v2

    move/from16 p1, v3

    move/from16 v21, v4

    move/from16 v23, v12

    .line 1550
    :goto_1d3
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    if-eqz v2, :cond_1e4

    move/from16 v18, p1

    move/from16 v20, v0

    move-object/from16 v16, v2

    move/from16 v22, v6

    move/from16 v19, v7

    .line 1551
    invoke-virtual/range {v16 .. v22}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->setTextureCrop(IIIIII)V

    :cond_1e4
    move/from16 v12, v23

    const/4 v11, 0x0

    const/4 v14, 0x1

    goto/16 :goto_111

    :cond_1ea
    move/from16 v23, v12

    const/4 v2, -0x1

    if-ne v0, v2, :cond_206

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No output from decoder available, inputSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x66

    return v0

    :cond_206
    if-gez v0, :cond_221

    .line 1566
    new-instance v1, Lcom/ss/android/vesdk/VELogUtil$LogData;

    const-string v2, "decoderStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0, v13}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v0

    const-string v1, "Unexpected result from decoder.dequeueOutputBuffer"

    invoke-static {v15, v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v23

    .line 1569
    :cond_221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Surface decoder given buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")  (pts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iput v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_indexOfOutputBuffer:I

    .line 1572
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25e

    const/4 v14, 0x1

    goto :goto_25f

    :cond_25e
    const/4 v14, 0x0

    :goto_25f
    iput-boolean v14, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    .line 1573
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-eqz v0, :cond_26a

    .line 1574
    const-string v0, "get MediaCodec BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_26a
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-nez v0, :cond_290

    .line 1585
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    .line 1586
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending input frame count decreased: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :cond_290
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-nez v0, :cond_296

    const/4 v11, 0x0

    goto :goto_297

    :cond_296
    move v11, v2

    :goto_297
    return v11
.end method

.method private deleteTexture()V
    .registers 4

    .line 784
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 785
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 786
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aput v1, p0, v1

    :cond_f
    return-void
.end method

.method public static dumpOESTexture(III)Z
    .registers 16

    const/4 v7, 0x1

    .line 1659
    new-array v8, v7, [I

    .line 1660
    new-array v9, v7, [I

    const v0, 0x8ca6

    const/4 v10, 0x0

    .line 1661
    invoke-static {v0, v9, v10}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 1662
    invoke-static {v7, v8, v10}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1664
    invoke-static {v10, v10, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const v11, 0x8d65

    .line 1665
    invoke-static {v11, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1666
    aget v0, v8, v10

    const v12, 0x8d40

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 1667
    invoke-static {v12, v0, v11, p0, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1669
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1670
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1671
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    .line 1672
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1673
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1674
    aget v0, v9, v10

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1675
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1676
    invoke-static {v7, v8, v10}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1678
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1679
    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.lemon.lv/files/OES_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1682
    sget v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    add-int/2addr v0, v7

    sput v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    .line 1683
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8d

    .line 1685
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1688
    :cond_8d
    :try_start_8d
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1689
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1690
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 1691
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9f} :catch_ac
    .catchall {:try_start_8d .. :try_end_9f} :catchall_a9

    .line 1696
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_a8

    .line 1697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a8
    return v7

    :catchall_a9
    move-exception v0

    move-object p0, v0

    goto :goto_bb

    :catch_ac
    move-exception v0

    move-object p0, v0

    .line 1693
    :try_start_ae
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_a9

    .line 1696
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_ba

    .line 1697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ba
    return v10

    .line 1696
    :goto_bb
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 1697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1699
    :cond_c4
    throw p0
.end method

.method private getInputBufferByIdx(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 1220
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxBlocksSizePerSecond()I
    .registers 10

    .line 660
    const-string v0, "TEMediaCodecDecoder"

    invoke-static {}, Lcom/ss/android/medialib/util/VEPlatformUtils;->getPlatform()Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object v1

    sget-object v2, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_HISI:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_c

    return v3

    .line 663
    :cond_c
    const-string v1, "video/avc"

    invoke-static {v1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMediaCodecInfo21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 667
    invoke-virtual {v2, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 669
    :try_start_18
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getBlocksPerSecondRange"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/ss/android/medialib/util/TEDoubleReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 670
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 671
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_38} :catch_58

    const/16 v2, 0x100

    .line 673
    :try_start_3a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 674
    const-string v5, "maxBlocksSizePerSecond"

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 675
    const-string v5, "vesdk_event_common_hw_resource_limit_size"

    const-string v6, "performance"

    invoke-static {v5, v4, v6}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_57} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_57} :catch_58

    goto :goto_73

    :catch_58
    move-exception v1

    goto :goto_81

    :catch_5a
    move-exception v4

    .line 677
    :try_start_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report maxBlocksSizePerSecond json err "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_73
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7d} :catch_58

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 681
    :goto_81
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    return v3
.end method

.method public static getMaxMediaCodecVideoDecoderCount()I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 706
    const-string v0, "video/avc"

    invoke-static {v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMediaCodecInfo21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 707
    const-string v2, "TEMediaCodecDecoder"

    if-nez v1, :cond_11

    .line 708
    const-string v0, "MediaCodecInfo is null!"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    .line 711
    :cond_11
    invoke-virtual {v1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxMediaCodecVideoDecoderCount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static getMediaCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 8

    .line 718
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_47

    .line 720
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 721
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_44

    .line 724
    :cond_13
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 725
    const-string v5, "OMX.google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    const-string v5, "OMX.Nvidia."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    const-string v5, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_44

    .line 728
    :cond_30
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 729
    :goto_35
    array-length v6, v4

    if-ge v5, v6, :cond_44

    .line 730
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    return-object v3

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMediaCodecInfo21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 740
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 741
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 742
    array-length v2, v0

    if-nez v2, :cond_11

    goto :goto_55

    .line 743
    :cond_11
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    if-eqz v5, :cond_52

    .line 744
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_52

    .line 747
    :cond_21
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 748
    const-string v7, "OMX.google."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    const-string v7, "OMX.Nvidia."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    const-string v7, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_52

    .line 751
    :cond_3e
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v3

    .line 752
    :goto_43
    array-length v8, v6

    if-ge v7, v8, :cond_52

    .line 753
    aget-object v8, v6, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    return-object v5

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_55
    :goto_55
    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 179
    const-class v0, Ljava/lang/String;

    .line 182
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 183
    const-string v2, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d
    .catchall {:try_start_2 .. :try_end_1c} :catchall_21

    return-object p0

    :catch_1d
    move-exception p0

    .line 186
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_21

    :catchall_21
    return-object p1
.end method

.method private isHisiByteVC1BlockList()Z
    .registers 2

    .line 194
    const-string p0, "ro.board.platform"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method private isMtkByteVC1BlockList()Z
    .registers 2

    .line 212
    sget-object p0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 213
    const-string v0, "mt6763"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mt6757"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mt6739"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mt6750"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private isNeedSendPacketAgain()Z
    .registers 1

    .line 476
    iget-boolean p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_needSendPacketAgain:Z

    return p0
.end method

.method public static isSupportByteVC10bit()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x4000

    .line 632
    const-string v2, "video/hevc"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->isSupportFormat(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static isSupportFormat(Ljava/lang/String;II)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 637
    invoke-static {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMediaCodecInfo21(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 639
    const-string p0, "TEMediaCodecDecoder"

    const-string p1, "MediaCodecInfo is null!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 642
    :cond_f
    invoke-virtual {v0, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 643
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v0, p0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    aget-object v3, p0, v2

    .line 644
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v4, p1, :cond_20

    goto :goto_26

    .line 647
    :cond_20
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v3, p2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    return v1
.end method

.method private isSupportSize(Landroid/media/MediaCodecInfo;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p1

    .line 543
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_38

    move-object v2, v1

    goto :goto_39

    :cond_38
    move-object v2, p1

    .line 544
    :goto_39
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_51

    move-object v3, v1

    goto :goto_52

    :cond_51
    move-object v3, p1

    .line 546
    :goto_52
    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    if-ge v4, v5, :cond_5a

    move v6, v4

    goto :goto_5b

    :cond_5a
    move v6, v5

    :goto_5b
    if-le v4, v5, :cond_5e

    goto :goto_5f

    :cond_5e
    move v4, v5

    .line 549
    :goto_5f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v0, 0x1

    .line 551
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportSize, m_iWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", m_iHeight  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", widthRange = ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], heightRange = ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], bSupportSize = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    const-string p1, "TEMediaCodecDecoder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private native nativeOnFrameAvailable(JLjava/nio/ByteBuffer;I)Z
.end method

.method private onImageFrameAvailable()V
    .registers 10

    .line 905
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_f3

    .line 908
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 909
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 911
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-le v0, v1, :cond_67

    .line 912
    new-instance v1, Lcom/ss/android/ttve/model/TEPlane;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV12:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 913
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v1, :cond_5d

    mul-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x3

    .line 914
    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 915
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-wide/16 v5, 0x0

    .line 916
    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 918
    :cond_5d
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v4, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v1, v4}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 919
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mConvertFrame:Lcom/ss/android/ttve/model/VEFrame;

    goto :goto_7b

    .line 921
    :cond_67
    new-instance v1, Lcom/ss/android/ttve/model/TEPlane;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/ttve/model/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createYUVPlanFrame(Lcom/ss/android/ttve/model/TEPlane;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    .line 924
    :goto_7b
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    if-ne v2, v1, :cond_9f

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    if-ne v3, v1, :cond_9f

    .line 925
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    instance-of v1, v1, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    if-eqz v1, :cond_9f

    .line 926
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v0

    .line 927
    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 928
    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_nativeHandler:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->nativeOnFrameAvailable(JLjava/nio/ByteBuffer;I)Z

    return-void

    .line 945
    :cond_9f
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    if-nez v1, :cond_c2

    .line 946
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 947
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 948
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    .line 951
    :cond_c2
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    if-ne v1, v2, :cond_d6

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    if-ne v1, v2, :cond_d6

    .line 952
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_COPY:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    goto :goto_dd

    .line 954
    :cond_d6
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    sget-object v2, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/common/TEImageUtils;->convertFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/ttve/model/VEFrame$Operation;)I

    .line 957
    :goto_dd
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mScaleFrame:Lcom/ss/android/ttve/model/VEFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v0

    .line 958
    check-cast v0, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 959
    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_nativeHandler:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->nativeOnFrameAvailable(JLjava/nio/ByteBuffer;I)Z

    return-void

    .line 961
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEMediaCodecDecoder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readTextureToByteBuffer(III)Ljava/nio/ByteBuffer;
    .registers 16

    const/4 v0, 0x1

    .line 1644
    new-array v1, v0, [I

    .line 1645
    new-array v2, v0, [I

    const v3, 0x8ca6

    const/4 v4, 0x0

    .line 1646
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 1647
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1648
    aget v3, v1, v4

    const v5, 0x8d40

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v6, 0xde1

    .line 1649
    invoke-static {v5, v3, v6, p0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    mul-int p0, p1, p2

    mul-int/lit8 p0, p0, 0x4

    .line 1650
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p1

    move v9, p2

    .line 1651
    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1652
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1653
    aget p0, v2, v4

    invoke-static {v5, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1654
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v12
.end method

.method private restartDecoder()I
    .registers 1

    .line 887
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->stopDecoder()I

    .line 888
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->startDecoder()I

    move-result p0

    return p0
.end method

.method public static saveFrameToFile(III)Z
    .registers 5

    .line 1705
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->convertTexToBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/com.lemon.lv/files/2D_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1707
    sget p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    sput p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->file_count:I

    .line 1708
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_38

    .line 1710
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1713
    :cond_38
    :try_start_38
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1714
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x14

    invoke-virtual {p1, p2, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1715
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 1716
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4a} :catch_56
    .catchall {:try_start_38 .. :try_end_4a} :catchall_54

    .line 1721
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_53

    .line 1722
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_53
    return v0

    :catchall_54
    move-exception p0

    goto :goto_65

    :catch_56
    move-exception p0

    .line 1718
    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    .line 1721
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_63

    .line 1722
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_63
    const/4 p0, 0x0

    return p0

    .line 1721
    :goto_65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_6e

    .line 1722
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1724
    :cond_6e
    throw p0
.end method

.method private static setHWDecodeBoolConfigFromNative(Ljava/lang/String;Z)V
    .registers 2

    return-void
.end method

.method private static setHWDecodeIntConfigFromNative(Ljava/lang/String;I)V
    .registers 2

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

    .line 1733
    :goto_6
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    return-void
.end method

.method private setRenderParam(I)V
    .registers 2

    .line 1758
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;->rotate:I

    return-void
.end method

.method private setupDecoder(Ljava/lang/String;)Z
    .registers 9

    .line 990
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_mediacodec_resource_reasonable_distribute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    const-string v3, "TEMediaCodecDecoder"

    if-eqz v0, :cond_5c

    .line 991
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    mul-int/2addr v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->tryUseCodecBlocksSize(II)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 992
    new-instance v0, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 993
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getMaxCodecBlocksSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "MaxCodecBlocksSize is"

    invoke-direct {v0, v5, v4, v1}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 994
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getUsedCodecBlocksSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "UsedCodecBlocksSize is"

    invoke-direct {v4, v6, v5, v1}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v4}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v0

    .line 992
    const-string v4, "setupDecoder ERROR_HW_OVERLOAD"

    invoke-static {v3, v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-boolean v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sHWEncoderStateIsBeforeRunning:Z

    if-eqz v0, :cond_5c

    .line 996
    const-string p0, "guarantee HWEncoder strategy"

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5c
    const/4 v0, 0x1

    .line 1002
    :try_start_5d
    sget-boolean v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_useCreateDecoderByName:Z

    if-nez v4, :cond_6a

    .line 1003
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    goto :goto_88

    :catch_68
    move-exception p1

    goto :goto_c0

    .line 1005
    :cond_6a
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getBestCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1006
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecoder, codecName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :goto_88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupDecoder, m_useCreateDecoderByName = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_useCreateDecoderByName:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surface:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz p1, :cond_ab

    .line 1012
    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v5, v6, p1, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_b8

    .line 1014
    :cond_ab
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_format:Landroid/media/MediaFormat;

    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1016
    :goto_b8
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 1017
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoderStarted:Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_bf} :catch_68

    return v0

    .line 1020
    :goto_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0xffffec77"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e9

    goto :goto_ea

    :cond_e9
    move v0, v2

    :goto_ea
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bHWOverload:Z

    .line 1022
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1023
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->cleanupDecoder()V

    return v2
.end method

.method private startDecoder()I
    .registers 9

    .line 791
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->IsValid()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "TEMediaCodecDecoder"

    if-eqz v0, :cond_f

    .line 792
    const-string p0, "You can\'t call startDecoder() twice!"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 797
    :cond_f
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    const/4 v3, 0x0

    if-nez v0, :cond_21

    .line 798
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aget v0, v0, v3

    if-nez v0, :cond_1e

    .line 800
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->createTexture()I

    move-result v0

    :cond_1e
    if-nez v0, :cond_22

    return v1

    :cond_21
    move v0, v3

    .line 809
    :cond_22
    :try_start_22
    iget-boolean v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez v4, :cond_4a

    .line 810
    new-instance v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface texture with texture (id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") has been created."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :catch_47
    move-exception v0

    goto/16 :goto_e8

    .line 815
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    new-instance v0, Landroid/os/Handler;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_MediaCodechandler:Landroid/os/Handler;

    .line 817
    iget-boolean v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez v4, :cond_6f

    .line 818
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 819
    new-instance v0, Landroid/view/Surface;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surface:Landroid/view/Surface;

    goto :goto_b2

    .line 821
    :cond_6f
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "VE-ImageReaderHandler"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoFramesHW: mReaderHandlerThread = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    new-instance v0, Landroid/os/Handler;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 825
    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    const/16 v6, 0x23

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImageReader:Landroid/media/ImageReader;

    .line 826
    invoke-virtual {v4, p0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_b2} :catch_47

    .line 836
    :goto_b2
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez v0, :cond_c2

    .line 837
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    .line 838
    invoke-virtual {v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->init()V

    .line 841
    :cond_c2
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->setupDecoder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 842
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->stopDecoder()I

    .line 843
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bHWOverload:Z

    if-eqz v0, :cond_e6

    .line 844
    iput-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bHWOverload:Z

    .line 845
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_video_reader_hw_overload_fallback_opt"

    invoke-virtual {p0, v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e6

    const/16 p0, -0x68

    return p0

    :cond_e6
    return v1

    :cond_e7
    return v3

    .line 830
    :goto_e8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 832
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->stopDecoder()I

    return v1
.end method

.method private stopDecoder()I
    .registers 3

    .line 857
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->cleanupDecoder()V

    .line 859
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 861
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 862
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 863
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mReaderHandlerThread:Landroid/os/HandlerThread;

    .line 866
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    if-eqz v0, :cond_1b

    .line 867
    invoke-virtual {v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->release()V

    .line 868
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    .line 871
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_24

    .line 872
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 873
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surface:Landroid/view/Surface;

    .line 876
    :cond_24
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_32

    .line 877
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 878
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 879
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_32
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cleanupDecoder()V
    .registers 6

    .line 1186
    const-string v0, "cleanupDecoder"

    const-string v1, "TEMediaCodecDecoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 1188
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoderStarted:Z

    if-eqz v0, :cond_41

    .line 1190
    :try_start_10
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    if-eqz v0, :cond_1e

    .line 1191
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 1192
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    goto :goto_1e

    :catch_1c
    move-exception v0

    goto :goto_24

    .line 1195
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_1c

    goto :goto_3f

    .line 1197
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1200
    :goto_3f
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoderStarted:Z

    .line 1202
    :cond_41
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    .line 1204
    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    .line 1207
    :cond_4b
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1208
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->freeCodecBlocksSize(II)V

    :cond_6a
    const-wide/high16 v0, -0x8000000000000000L

    .line 1210
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    .line 1211
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 1212
    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 1213
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    .line 1214
    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    return-void
.end method

.method public closeDecoder()I
    .registers 3

    .line 343
    const-string v0, "TEMediaCodecDecoder"

    const-string v1, "closeHwDecoder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->stopDecoder()I

    .line 345
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->deleteTexture()V

    const/4 p0, 0x0

    return p0
.end method

.method public decodeFrame([BIJIIII)I
    .registers 14

    .line 361
    iput p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    .line 362
    iput p7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    .line 363
    iput p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    .line 368
    iget-boolean p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez p6, :cond_18

    iget-object p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez p6, :cond_18

    .line 369
    new-instance p6, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {p6}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 370
    invoke-virtual {p6}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 374
    :cond_18
    iget-boolean p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    const-string p7, "TEMediaCodecDecoder"

    if-nez p6, :cond_57

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p6

    iget-object p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {p8}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object p8

    invoke-virtual {p6, p8}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_57

    .line 375
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "eglGetCurrentContext = "

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, " getSavedEGLContext = "

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {p8}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p7, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p6, 0x1

    .line 376
    iput-boolean p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    .line 379
    :cond_57
    iget-boolean p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    const/4 p8, 0x0

    if-eqz p6, :cond_6a

    .line 380
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->restartDecoder()I

    .line 381
    iput-boolean p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    .line 382
    iget-boolean p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez p6, :cond_6a

    .line 383
    iget-object p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {p6}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 387
    :cond_6a
    iget-object p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, -0x2

    if-nez p6, :cond_70

    return v1

    .line 391
    :cond_70
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p6

    const-string v0, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {p6, v0, p8}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_bf

    .line 392
    iget p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr p6, v0

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    mul-int/2addr p6, v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p6, v0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->tryUseCodecBlocksSize(II)Z

    move-result p6

    if-nez p6, :cond_bf

    .line 393
    new-instance p6, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 394
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getMaxCodecBlocksSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaxCodecBlocksSize is"

    const-string v3, ""

    invoke-direct {p6, v2, v0, v3}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 395
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getUsedCodecBlocksSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "UsedCodecBlocksSize is"

    invoke-direct {v0, v4, v2, v3}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p6, v0}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object p6

    .line 393
    const-string v0, "decodeFrame ERROR_HW_OVERLOAD"

    invoke-static {p7, v0, p6}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p7, p6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_bf
    :try_start_bf
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->decodeFrame2Surface([BIJ)I

    move-result v1
    :try_end_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_bf .. :try_end_c3} :catch_c4

    goto :goto_c9

    :catch_c4
    move-exception v0

    move-object p1, v0

    .line 405
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c9
    if-nez v1, :cond_104

    .line 421
    iget-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-eqz p1, :cond_d4

    .line 422
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 425
    :cond_d4
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_db

    .line 426
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 429
    :cond_db
    iget-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-eqz p1, :cond_e5

    .line 430
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    return v1

    .line 433
    :cond_e5
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    if-eqz p1, :cond_fd

    if-lez p5, :cond_fd

    .line 435
    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget p3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    iget p4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    move p7, p5

    iget p5, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    iget-object p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aget p6, p6, p8

    iget p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    invoke-virtual/range {p1 .. p8}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->drawFrame(IIIIIII)V

    .line 438
    :cond_fd
    iget-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-eqz p1, :cond_104

    .line 439
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->onImageFrameAvailable()V

    :cond_104
    return v1
.end method

.method public decodeFrameWithoutDraw([BIJ)I
    .registers 11

    .line 447
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, -0x2

    if-nez v0, :cond_6

    return v1

    .line 451
    :cond_6
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_mediacodec_resource_reasonable_distribute"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 452
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->tryUseCodecBlocksSize(II)Z

    move-result v0

    if-nez v0, :cond_58

    .line 453
    new-instance v0, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 454
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getMaxCodecBlocksSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MaxCodecBlocksSize is"

    const-string v4, ""

    invoke-direct {v0, v3, v2, v4}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ss/android/vesdk/VELogUtil$LogData;

    .line 455
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->getUsedCodecBlocksSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "UsedCodecBlocksSize is"

    invoke-direct {v2, v5, v3, v4}, Lcom/ss/android/vesdk/VELogUtil$LogData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v2}, [Lcom/ss/android/vesdk/VELogUtil$LogData;

    move-result-object v0

    .line 453
    const-string v2, "TEMediaCodecDecoder"

    const-string v3, "decodeFrameWithoutDraw ERROR_HW_OVERLOAD"

    invoke-static {v2, v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_58
    :try_start_58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->decodeFrameWithInputOutput([BIJ)I

    move-result p0
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5c} :catch_5d

    return p0

    :catch_5d
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public flushDecoder(Z)I
    .registers 6

    .line 497
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_68

    .line 499
    const-string v0, "TEMediaCodecDecoder"

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    :try_start_9
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-eqz v2, :cond_24

    .line 500
    :cond_11
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->cleanupDecoder()V

    .line 501
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->setupDecoder(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, -0x2

    return p0

    .line 504
    :cond_1e
    const-string p0, "Decoder has been recreated."

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 508
    :cond_24
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    if-eqz v2, :cond_68

    if-nez p1, :cond_36

    const-wide/high16 v2, -0x8000000000000000L

    .line 510
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    .line 511
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 512
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 513
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawInputEOS:Z

    .line 514
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    .line 517
    :cond_36
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->flush()V

    .line 518
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_inputBufferQueued:Z

    .line 519
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 520
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string v2, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {p1, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 521
    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    mul-int/2addr p1, v2

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    mul-int/2addr p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->freeCodecBlocksSize(II)V

    .line 523
    :cond_5e
    const-string p0, "Video decoder has been flushed."

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64

    return v1

    :catch_64
    move-exception p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_68
    const/4 p0, -0x3

    return p0
.end method

.method public getBestCodecName(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p1

    .line 1075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 1078
    :cond_a
    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-boolean v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mIsByteVC1Blocklist:Z

    if-eqz v1, :cond_2f

    .line 1079
    const-string v0, "TEMediaCodecDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the device is hw decoder blocklist,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1083
    :cond_2f
    const-string v1, "TEMediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect hardware codec by codecType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    sget-object v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mCodecListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1088
    :try_start_4d
    sget-object v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_5c

    if-nez v4, :cond_63

    .line 1093
    :try_start_55
    sget-object v5, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_67

    :catchall_5c
    move-exception v0

    goto/16 :goto_1c4

    :catch_5f
    move-object/from16 p0, v2

    goto/16 :goto_1bb

    :cond_63
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_5f
    .catchall {:try_start_55 .. :try_end_67} :catchall_5c

    :goto_67
    const/4 v6, 0x0

    move v7, v6

    :goto_69
    if-ge v7, v5, :cond_73

    if-nez v4, :cond_77

    .line 1100
    :try_start_6d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_77

    :cond_73
    move-object/from16 p0, v2

    goto/16 :goto_18f

    :cond_77
    if-nez v4, :cond_82

    .line 1104
    sget-object v8, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaCodecInfo;

    goto :goto_86

    :cond_82
    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 1105
    :goto_86
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1106
    const-string v10, "TEMediaCodecDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found codec name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_aa

    :cond_a6
    :goto_a6
    move-object/from16 p0, v2

    goto/16 :goto_189

    .line 1110
    :cond_aa
    const-string v10, "OMX.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a6

    const-string v10, "c2.android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bb

    goto :goto_a6

    .line 1113
    :cond_bb
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_c2

    goto :goto_a6

    .line 1117
    :cond_c2
    array-length v11, v10

    move v12, v6

    :goto_c4
    if-ge v12, v11, :cond_a6

    aget-object v13, v10, v12

    .line 1118
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d2

    :goto_ce
    move-object/from16 p0, v2

    goto/16 :goto_183

    :cond_d2
    if-eqz v4, :cond_e1

    .line 1122
    const-string v14, "video/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e1

    .line 1123
    sget-object v14, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_e1
    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e8

    goto :goto_ce

    .line 1129
    :cond_e8
    const-string v14, "TEMediaCodecDecoder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v2

    const-string v2, "codec types : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v2, "OMX."

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string v2, "c2."

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_183

    :cond_110
    const-string v2, "OMX.pv"

    .line 1134
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_183

    const-string v2, "OMX.ittiam"

    .line 1135
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_183

    const-string v2, "ffmpeg"

    .line 1136
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_183

    const-string v2, "avcodec"

    .line 1137
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_183

    const-string v2, "secure"

    .line 1138
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_139

    goto :goto_183

    .line 1141
    :cond_139
    const-string v2, "OMX.MTK."

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1144
    invoke-static {v9}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    goto :goto_183

    .line 1148
    :cond_145
    invoke-static {v8, v0}, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->setupRank(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;

    move-result-object v2

    if-nez v2, :cond_14c

    goto :goto_183

    .line 1152
    :cond_14c
    const-string v13, "TEMediaCodecDecoder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "codec : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",  rank : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v2, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget v13, v2, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    const/16 v14, 0x14

    if-ne v13, v14, :cond_180

    .line 1162
    const-string v2, "TEMediaCodecDecoder"

    const-string v13, "skip vendor software codec"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    .line 1166
    :cond_180
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_183
    :goto_183
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_c4

    :goto_189
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_69

    .line 1170
    :goto_18f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 1171
    monitor-exit v3

    return-object p0

    .line 1173
    :cond_197
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;

    .line 1175
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1a1
    :goto_1a1
    if-ge v6, v2, :cond_1b3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    check-cast v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;

    .line 1176
    iget v5, v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    iget v7, v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    if-le v5, v7, :cond_1a1

    move-object v0, v4

    goto :goto_1a1

    .line 1181
    :cond_1b3
    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 1095
    :goto_1bb
    const-string v0, "TEMediaCodecDecoder"

    const-string v1, "mediaserver died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    monitor-exit v3

    return-object p0

    .line 1182
    :goto_1c4
    monitor-exit v3
    :try_end_1c5
    .catchall {:try_start_6d .. :try_end_1c5} :catchall_5c

    throw v0
.end method

.method public getInfoByFlag([JI)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_9

    .line 488
    iget-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfLastDecodedFrame:J

    aput-wide v2, p1, v1

    goto :goto_10

    :cond_9
    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 490
    iget-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    aput-wide v2, p1, v1

    :cond_10
    :goto_10
    return v1
.end method

.method public getOESTexture()I
    .registers 2

    .line 1774
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getRenderParam()Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;
    .registers 1

    .line 1766
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_renderParam:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$RenderParam;

    return-object p0
.end method

.method public initDecoder(JIII[BIIIIZZ)I
    .registers 13

    .line 239
    iput-wide p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_nativeHandler:J

    .line 240
    iput-boolean p12, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    .line 241
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string p2, "ve_enable_global_decoder_pool"

    const/4 p12, 0x0

    invoke-virtual {p1, p2, p12}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bGlobalDecoderPoolOption:I

    .line 248
    sput-boolean p11, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_useCreateDecoderByName:Z

    const/16 p1, 0xae

    if-ne p1, p10, :cond_24

    .line 250
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->isHisiByteVC1BlockList()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->isMtkByteVC1BlockList()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    :goto_24
    move-object p2, p0

    goto :goto_2a

    :cond_26
    :goto_26
    const/4 p1, 0x1

    .line 251
    sput-boolean p1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mIsByteVC1Blocklist:Z

    goto :goto_24

    .line 254
    :goto_2a
    invoke-virtual/range {p2 .. p10}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->setDecoderParams(III[BIIII)I

    move-result p0

    .line 255
    iget-boolean p1, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    if-eqz p1, :cond_36

    .line 256
    invoke-direct {p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->configureMediaFormat()I

    move-result p0

    :cond_36
    if-eqz p0, :cond_39

    return p0

    .line 262
    :cond_39
    iget-object p1, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez p1, :cond_4b

    iget-boolean p1, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez p1, :cond_4b

    .line 263
    new-instance p1, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {p1}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object p1, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 264
    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 267
    :cond_4b
    iget-boolean p1, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    if-eqz p1, :cond_57

    .line 268
    invoke-direct {p2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->restartDecoder()I

    move-result p0

    if-nez p0, :cond_57

    .line 270
    iput-boolean p12, p2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    .line 274
    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initHwDecoder srcSize:("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), dstSize:("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TEMediaCodecDecoder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 894
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 895
    :try_start_3
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    if-eqz v0, :cond_11

    .line 896
    const-string v0, "TEMediaCodecDecoder"

    const-string v1, "m_frameAvailable already set, frame could be dropped!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_1b

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 898
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    .line 899
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 900
    monitor-exit p1

    return-void

    :goto_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 967
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    if-eqz v1, :cond_11

    .line 969
    const-string v1, "TEMediaCodecDecoder"

    const-string v2, "m_frameAvailable already set, frame could be dropped!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_28

    .line 971
    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 973
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    if-eqz v1, :cond_1c

    .line 974
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 977
    :cond_1c
    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mImage:Landroid/media/Image;

    const/4 p1, 0x1

    .line 979
    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameAvailable:Z

    .line 980
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_frameSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 981
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_f

    throw p0
.end method

.method public releaseOutBuffer(Z)I
    .registers 6

    .line 1604
    const-string v0, "TEMediaCodecDecoder"

    const/4 v1, 0x1

    .line 1606
    :try_start_3
    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_pendingInputFrameCount:I

    .line 1607
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_decoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_indexOfOutputBuffer:I

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v2

    .line 1609
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1610
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const/4 v2, 0x0

    if-eqz p1, :cond_56

    const/16 p1, 0x1f4

    .line 1614
    invoke-direct {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->AwaitNewImage(I)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 1615
    const-string p0, "release output buffer to surface texture failed!"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x67

    return p0

    .line 1618
    :cond_2e
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_awaitNewImageSuccess:Z

    .line 1620
    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bGlobalDecoderPoolOption:I

    if-lez p0, :cond_56

    move p0, v2

    .line 1623
    :goto_35
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_51

    .line 1624
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after releaseOutBuffer, glError:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    goto :goto_35

    :cond_51
    if-eqz p0, :cond_56

    const/16 p0, -0x69

    return p0

    :cond_56
    return v2
.end method

.method public setDecoderParams(III[BIIII)I
    .registers 9

    .line 293
    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    .line 294
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    .line 295
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iFps:I

    .line 296
    iput p6, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    .line 297
    iput p7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_codecSpecificData:Ljava/nio/ByteBuffer;

    .line 299
    iput p8, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iCodecID:I

    const/4 p1, 0x2

    if-eq p8, p1, :cond_45

    const/16 p2, 0xd

    if-eq p8, p2, :cond_40

    const/16 p2, 0x1c

    if-eq p8, p2, :cond_39

    const/16 p1, 0x8c

    if-eq p8, p1, :cond_34

    const/16 p1, 0xa8

    if-eq p8, p1, :cond_2f

    const/16 p1, 0xae

    if-eq p8, p1, :cond_27

    goto :goto_49

    .line 307
    :cond_27
    const-string p1, "video/hevc"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    const/4 p1, 0x4

    .line 308
    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mMinCompressionRatio:I

    goto :goto_49

    .line 324
    :cond_2f
    const-string p1, "video/x-vnd.on2.vp9"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    goto :goto_49

    .line 320
    :cond_34
    const-string p1, "video/x-vnd.on2.vp8"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    goto :goto_49

    .line 302
    :cond_39
    const-string p2, "video/avc"

    iput-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    .line 303
    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->mMinCompressionRatio:I

    goto :goto_49

    .line 316
    :cond_40
    const-string p1, "video/mp4v-es"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    goto :goto_49

    .line 312
    :cond_45
    const-string p1, "video/mpeg2"

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    :goto_49
    const/4 p1, 0x0

    if-lez p5, :cond_52

    .line 329
    invoke-static {p4, p1, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_codecSpecificData:Ljava/nio/ByteBuffer;

    :cond_52
    const/4 p2, 0x1

    .line 332
    iput-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bNeedConfigure:Z

    return p1
.end method

.method public signalReEncodeOptCV()V
    .registers 2

    .line 1781
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-nez v0, :cond_5

    return-void

    .line 1784
    :cond_5
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 1785
    const-string p0, "TEMediaCodecDecoder"

    const-string v0, "signalReEncodeOptCV..."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAndRenderOES(IIII)V
    .registers 13

    .line 1794
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    .line 1795
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    .line 1796
    iput p4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    .line 1797
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez p2, :cond_18

    .line 1798
    new-instance p2, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {p2}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    .line 1799
    invoke-virtual {p2}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    .line 1802
    :cond_18
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    const-string p3, "TEMediaCodecDecoder"

    if-nez p2, :cond_54

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p2

    iget-object p4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {p4}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    .line 1803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "eglGetCurrentContext = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " getSavedEGLContext = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {p4}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :cond_54
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_sawOutputEOS:Z

    if-nez p2, :cond_ac

    .line 1807
    const-string p2, "Rendering decoded frame to surface texture."

    invoke-static {p3, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_awaitNewImageSuccess:Z

    if-eqz p2, :cond_a6

    .line 1811
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_timestampOfCurTexFrame:J

    .line 1814
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    if-eqz p2, :cond_70

    .line 1815
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    .line 1818
    :cond_70
    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_77

    .line 1819
    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1822
    :cond_77
    iget-boolean p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bReEnableOpt:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_84

    .line 1823
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_ReEncodeOptCV:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 1824
    iput-boolean p3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_awaitNewImageSuccess:Z

    return-void

    .line 1828
    :cond_84
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_textureRender:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;

    if-eqz v0, :cond_9c

    if-lez p1, :cond_9c

    .line 1829
    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iWidth:I

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iHeight:I

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputWidth:I

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iOutputHeight:I

    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_surfaceTexID:[I

    aget v5, p2, p3

    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_iRotateDegree:I

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;->drawFrame(IIIIIII)V

    .line 1832
    :cond_9c
    iget-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_bUseImageReader:Z

    if-eqz p1, :cond_a3

    .line 1833
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->onImageFrameAvailable()V

    .line 1836
    :cond_a3
    iput-boolean p3, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->m_awaitNewImageSuccess:Z

    return-void

    .line 1838
    :cond_a6
    const-string p0, "Render OES to 2D texture failed: m_awaitNewImageSuccess is false!"

    invoke-static {p3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1841
    :cond_ac
    const-string p0, "Render OES to 2D texture failed: m_sawOutputEOS"

    invoke-static {p3, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
