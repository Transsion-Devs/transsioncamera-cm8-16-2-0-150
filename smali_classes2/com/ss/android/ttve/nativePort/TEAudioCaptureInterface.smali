.class public Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 23
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(ZZ)J
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeInit(JIIII)I
.end method

.method private native nativeStart(J)I
.end method

.method private native nativeStop(J)I
.end method


# virtual methods
.method public init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 15

    .line 76
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TESystemUtils;->getOutputAudioDeviceType()I

    move-result v1

    sget-object v2, Lcom/ss/android/ttve/model/VEAudioDeviceType;->WIRED:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 77
    :goto_f
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->isEnableSysKaraoke()Z

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->nativeCreate(ZZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mHandle:J

    .line 78
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getBitSamples()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getFramesPerBuffer()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->nativeInit(JIIII)I

    move-result v9

    .line 79
    iget-object v7, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz v7, :cond_3a

    .line 81
    sget v8, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    const-wide/16 v10, 0x0

    move-object v12, p1

    invoke-interface/range {v7 .. v12}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    :cond_3a
    return v9
.end method

.method public onNativeExtCallback(II)V
    .registers 9

    .line 93
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz v0, :cond_17

    .line 95
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_CAPTURE:I

    if-ne p1, p0, :cond_e

    .line 96
    const-string p1, ""

    invoke-interface {v0, p0, p2, p1}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onError(IILjava/lang/String;)V

    return-void

    :cond_e
    const-wide/16 v3, 0x0

    .line 98
    const-string v5, ""

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->nativeDestroy(J)I

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mHandle:J

    return-void
.end method

.method public setAudioCallback(Lcom/ss/android/vesdk/audio/TEAudioCallback;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    return-void
.end method

.method public setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
    .registers 2

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method

.method public start()I
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public start(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 10

    .line 45
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->nativeStart(J)I

    move-result v4

    .line 46
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz v2, :cond_13

    .line 48
    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_START:I

    const-wide/16 v5, 0x0

    const-string v7, ""

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    :cond_13
    return v4
.end method

.method public stop()I
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public stop(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 71
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEAudioCaptureInterface;->nativeStop(J)I

    move-result p0

    return p0
.end method
