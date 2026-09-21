.class public Lcom/ss/android/vesdk/VEAudioCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioCapture;
.implements Lcom/ss/android/vesdk/VEListener$VEAppLifeCycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VEAudioCapture"


# instance fields
.field private audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

.field private mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

.field mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    .line 35
    new-instance v0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-direct {v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    .line 36
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCapture$1;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEAudioCapture$1;-><init>(Lcom/ss/android/vesdk/VEAudioCapture;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->setAudioCallback(Lcom/ss/android/vesdk/audio/TEAudioCallback;)V

    return-void
.end method

.method public static isSupportEarBack(Lcom/ss/android/vesdk/audio/VEAudioDevice;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z
    .registers 2

    if-nez p1, :cond_b

    .line 176
    const-string p0, "VEAudioCapture"

    const-string p1, "addCaptureListener error listener is null!!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public clean()V
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->clear()V

    return-void
.end method

.method public getMicState()I
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->getMicState()I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 5

    .line 140
    new-instance v0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)V

    .line 141
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string v1, "ve_audio_source_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioSource(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result p0

    return p0
.end method

.method public onBackGround()V
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->appLifeCycleChanged(Z)V

    return-void
.end method

.method public onForeGround()V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->appLifeCycleChanged(Z)V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public removeCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_13

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V

    .line 156
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    if-eqz p0, :cond_13

    .line 157
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioDevice;->getType()Lcom/ss/android/ttve/model/VEAudioDeviceType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/audio/IAudioDeviceListener;->onAudioDeviceChanged(Lcom/ss/android/ttve/model/VEAudioDeviceType;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setAudioDeviceChangeListener(Lcom/ss/android/vesdk/audio/IAudioDeviceListener;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    return-void
.end method

.method public start()I
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public start(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public stop()I
    .registers 2

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public stop(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->audioRecord:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method
