.class public interface abstract Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deInit()V
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Bundle;Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Z
.end method

.method public abstract startSession(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract stopSession(Ljava/lang/String;)V
.end method

.method public abstract streamAudioData(Ljava/lang/String;[BI)V
.end method
