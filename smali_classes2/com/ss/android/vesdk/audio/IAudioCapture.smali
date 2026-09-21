.class public interface abstract Lcom/ss/android/vesdk/audio/IAudioCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/audio/IAudioCapture$EarBackType;,
        Lcom/ss/android/vesdk/audio/IAudioCapture$Type;
    }
.end annotation


# virtual methods
.method public abstract init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/bytedance/bpea/basics/Cert;)V
.end method

.method public abstract setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
.end method

.method public abstract start()I
.end method

.method public abstract start(Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract stop()I
.end method

.method public abstract stop(Lcom/bytedance/bpea/basics/Cert;)I
.end method
