.class public Lcom/meicam/sdk/NvsAVFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUDIO_MAX_STREAM_COUNT:I = 0x4

.field public static final AV_FILE_TYPE_AUDIO:I = 0x1

.field public static final AV_FILE_TYPE_AUDIOVIDEO:I = 0x0

.field public static final AV_FILE_TYPE_IMAGE:I = 0x2

.field public static final AV_FILE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

.field m_dataRate:J

.field m_duration:J

.field m_numAudioStreams:I

.field m_numVideoStreams:I

.field m_type:I

.field m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [Lcom/meicam/sdk/NvsAudioStreamInfo;

    iput-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    return-void
.end method


# virtual methods
.method public getAVFileType()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_type:I

    return p0
.end method

.method public getAudioStreamChannelCount(I)I
    .registers 3

    .line 305
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_b

    .line 306
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meicam/sdk/NvsAudioStreamInfo;->channelCount:I

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getAudioStreamCount()I
    .registers 1

    .line 123
    iget p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    return p0
.end method

.method public getAudioStreamDuration(I)J
    .registers 3

    .line 271
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_b

    .line 272
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object p0, p0, p1

    iget-wide p0, p0, Lcom/meicam/sdk/NvsAudioStreamInfo;->duration:J

    return-wide p0

    :cond_b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getAudioStreamSampleRate(I)I
    .registers 3

    .line 288
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_b

    .line 289
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meicam/sdk/NvsAudioStreamInfo;->sampleRate:I

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getDataRate()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_dataRate:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_duration:J

    return-wide v0
.end method

.method public getVideoStreamCodecType(I)I
    .registers 3

    .line 253
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_9

    .line 254
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->videoCodecType:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoStreamComponentBitCount(I)I
    .registers 3

    .line 235
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_9

    .line 236
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->componentBitCount:I

    return p0

    :cond_9
    const/16 p0, 0x8

    return p0
.end method

.method public getVideoStreamCount()I
    .registers 1

    .line 110
    iget p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    return p0
.end method

.method public getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;
    .registers 4

    .line 157
    new-instance v0, Lcom/meicam/sdk/NvsSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    .line 158
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_14

    .line 159
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget p1, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->imageWidth:I

    iput p1, v0, Lcom/meicam/sdk/NvsSize;->width:I

    .line 160
    iget p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->imageHeight:I

    iput p0, v0, Lcom/meicam/sdk/NvsSize;->height:I

    :cond_14
    return-object v0
.end method

.method public getVideoStreamDuration(I)J
    .registers 3

    .line 140
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_9

    .line 141
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-wide p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->duration:J

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getVideoStreamFrameRate(I)Lcom/meicam/sdk/NvsRational;
    .registers 4

    .line 197
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 198
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_16

    .line 199
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->frameRate:Lcom/meicam/sdk/NvsRational;

    iget p1, p0, Lcom/meicam/sdk/NvsRational;->num:I

    iput p1, v0, Lcom/meicam/sdk/NvsRational;->num:I

    .line 200
    iget p0, p0, Lcom/meicam/sdk/NvsRational;->den:I

    iput p0, v0, Lcom/meicam/sdk/NvsRational;->den:I

    :cond_16
    return-object v0
.end method

.method public getVideoStreamPixelAspectRatio(I)Lcom/meicam/sdk/NvsRational;
    .registers 4

    .line 177
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 178
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_16

    .line 179
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->pixelAspectRatio:Lcom/meicam/sdk/NvsRational;

    iget p1, p0, Lcom/meicam/sdk/NvsRational;->num:I

    iput p1, v0, Lcom/meicam/sdk/NvsRational;->num:I

    .line 180
    iget p0, p0, Lcom/meicam/sdk/NvsRational;->den:I

    iput p0, v0, Lcom/meicam/sdk/NvsRational;->den:I

    :cond_16
    return-object v0
.end method

.method public getVideoStreamRotation(I)I
    .registers 3

    .line 217
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_9

    .line 218
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget p0, p0, Lcom/meicam/sdk/NvsVideoStreamInfo;->displayRotation:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method setAudioStreamInfo(ILcom/meicam/sdk/NvsAudioStreamInfo;)V
    .registers 4

    .line 312
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_8

    .line 313
    iget-object p0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aput-object p2, p0, p1

    :cond_8
    return-void
.end method
