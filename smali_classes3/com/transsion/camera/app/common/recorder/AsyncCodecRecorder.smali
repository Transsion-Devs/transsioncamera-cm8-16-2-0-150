.class Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;
.super Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCodecRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

.field private final mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBufferHolder(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/featurelibs/media/IBufferHolder;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewOperator(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextureHolder(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/featurelibs/media/ITextureHolder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsyncCodecRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V
    .registers 10

    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)V

    .line 180
    new-instance p1, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;-><init>(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    .line 67
    iput-object p8, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 68
    iput-object p7, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mCodecRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    .line 69
    iput-object p9, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    return-void
.end method

.method private calcBitRate(II)I
    .registers 4

    const/high16 p0, 0x40f00000    # 7.5f

    int-to-float v0, p1

    mul-float/2addr v0, p0

    int-to-float p0, p2

    mul-float/2addr v0, p0

    float-to-int p0, v0

    mul-int/2addr p1, p2

    const p2, 0x1fa400

    if-ne p1, p2, :cond_10

    const p0, 0x1312d00

    .line 176
    :cond_10
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    int-to-float p2, p0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p2, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "bitrate=%5.2f[Mbps]"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private configRecorder()Z
    .registers 10

    .line 99
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "configRecorder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 102
    const-string p0, "configRecorder previewSize is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 106
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v1

    if-nez v1, :cond_23

    .line 108
    const-string p0, "configRecorder videoFileSpec is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 112
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->getVideoMime()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v5, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->calcBitRate(II)I

    move-result v5

    .line 115
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getOrientation()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v6

    .line 117
    :goto_40
    new-instance v6, Landroid/util/Size;

    iget-object v7, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->getVideoBitRate()I

    move-result v7

    if-lez v7, :cond_58

    move v5, v7

    .line 124
    :cond_58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configRecorder mime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", bitRate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", videoSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;-><init>()V

    .line 128
    invoke-virtual {v0, v4}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->needMedia(Z)Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    move-result-object v0

    .line 131
    new-instance v7, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;

    invoke-direct {v7}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;-><init>()V

    .line 132
    invoke-virtual {v7, v3}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mimeType(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v5}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->bitRate(I)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;

    move-result-object v3

    .line 134
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->videoSize(II)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    move-result-object v3

    .line 137
    new-instance v5, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;

    invoke-direct {v5}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;-><init>()V

    .line 138
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->fileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;

    move-result-object v5

    .line 139
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->filePath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v2}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->orientationHint(I)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;-><init>()V

    .line 144
    invoke-virtual {v2, v0}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->audioParam(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v3}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->videoParam(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->muxerParam(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;

    move-result-object v0

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V

    return v4
.end method

.method private resetRecorder()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-nez v0, :cond_22

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    if-eqz v0, :cond_1a

    .line 157
    new-instance v1, Lcom/transsion/camera/featurelibs/media/RecorderClient;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;-><init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    .line 158
    new-instance v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;-><init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;)V

    invoke-virtual {v1, v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    return-void

    .line 163
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mTextureHolder and mBufferHolder are both null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_22
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->reset()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->init()V

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    return-void
.end method

.method protected startRecordingResult()Z
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->resetRecorder()V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mCodecRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->configRecorder()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
