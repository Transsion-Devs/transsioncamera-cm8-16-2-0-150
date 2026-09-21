.class public final enum Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;",
        ">;",
        "Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

.field public static final enum INSTANCE:Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

.field private static final TAG:Ljava/lang/String; = "AudioCaptureHolder"


# instance fields
.field mAudioDataInterface:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

.field private mFeedPcm:Z

.field mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->INSTANCE:Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    .line 11
    filled-new-array {v0}, [Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->$VALUES:[Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mFeedPcm:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;
    .registers 2

    .line 11
    const-class v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;
    .registers 1

    .line 11
    sget-object v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->$VALUES:[Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    return-object v0
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 5

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "errType"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "msg:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioCaptureHolder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 15

    .line 35
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    if-ne p1, v0, :cond_a5

    .line 36
    iget-object v1, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mAudioDataInterface:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    move v2, p1

    move v3, p2

    if-eqz v1, :cond_10

    move-wide v4, p3

    move-object v6, p5

    .line 37
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onInfo(IIDLjava/lang/Object;)V

    goto :goto_11

    :cond_10
    move-object v6, p5

    .line 39
    :goto_11
    const-string p1, "AudioCaptureHolder"

    if-nez v3, :cond_8a

    .line 40
    move-object p5, v6

    check-cast p5, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 41
    iget-object p2, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    if-nez p2, :cond_22

    .line 42
    const-string p0, "please set VEAudioEncodeSettings, before init AudioCapture"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_22
    iget-object v3, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    if-nez v3, :cond_2c

    .line 46
    const-string p0, "please set buffer consumer, before init AudioCapture"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_2c
    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v4

    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v5

    iget-object p2, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 50
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v6

    iget-object p2, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 51
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v7

    iget-object p2, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result v8

    .line 49
    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initAudioConfig(IIIII)I

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mVEAudioCapture inited: channelCount:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " sampleHz:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " encode sample rate:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 54
    invoke-virtual {p3}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " encode channel count:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 55
    invoke-virtual {p3}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 57
    :cond_8a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initAudio error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_9e
    sget p1, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_START:I

    if-ne v2, p1, :cond_a5

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mFeedPcm:Z

    :cond_a5
    return-void
.end method

.method public onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v1, "AudioCaptureHolder"

    if-nez v0, :cond_c

    .line 85
    const-string p0, "onReceiver error: please set buffer consumer, before init AudioCapture"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_c
    iget-boolean v0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mFeedPcm:Z

    if-nez v0, :cond_16

    .line 89
    const-string p0, "pcm feed stop"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_16
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    if-eqz v0, :cond_36

    .line 94
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 95
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getByteSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v2

    .line 94
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->feed([BIJ)I

    return-void

    .line 96
    :cond_36
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mAudioDataInterface:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-eqz p0, :cond_3d

    .line 97
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    :cond_3d
    return-void
.end method

.method public setAudioBufferConsumer(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 3

    .line 23
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 24
    iput-object p2, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mAudioDataInterface:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    return-void
.end method

.method public setAudioEncodeSettings(Lcom/ss/android/vesdk/VEAudioEncodeSettings;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mVEAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    return-void
.end method

.method public startFeedPCM()V
    .registers 2

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mFeedPcm:Z

    return-void
.end method

.method public stopFeedPCM()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->mFeedPcm:Z

    return-void
.end method
