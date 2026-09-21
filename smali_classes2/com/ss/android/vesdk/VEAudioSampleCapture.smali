.class public Lcom/ss/android/vesdk/VEAudioSampleCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioCapture;


# static fields
.field private static final TAG:Ljava/lang/String; = "VEAudioSampleCapture"


# instance fields
.field private mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

.field private mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 8

    .line 76
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioSampleCapture;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 77
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioSampleCapture;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 78
    sget v1, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onInfo(IIDLjava/lang/Object;)V

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 0
    return-void
.end method

.method public sendAudioSample(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioSampleCapture;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-eqz p0, :cond_7

    .line 98
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    :cond_7
    return-void
.end method

.method public setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioSampleCapture;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    return-void
.end method

.method public setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
    .registers 2

    return-void
.end method

.method public start()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public start(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
