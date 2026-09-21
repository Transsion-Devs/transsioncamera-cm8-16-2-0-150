.class public interface abstract Lcom/bytedance/ies/nle/editor_jni/INLERhythmPointRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginGenVideoFrames(ILcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)I
.end method

.method public abstract beginGenVideoFrames(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)I
.end method

.method public abstract cancelGenVideoFrame(I)I
.end method

.method public abstract cancelGenVideoFrame(Ljava/lang/String;)I
.end method

.method public abstract checkScoresFile(Ljava/lang/String;)I
.end method

.method public abstract genRandomSolve()I
.end method

.method public abstract genSmartCutting()I
.end method

.method public abstract getAllVideoRangeData()Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;
.end method

.method public abstract initBingoAlgorithm()I
.end method

.method public abstract removeAllVideoSound()I
.end method

.method public abstract removeMusic(I)I
.end method

.method public abstract restoreAllVideoSound()I
.end method

.method public abstract setInterimScoresToFile(Ljava/lang/String;)I
.end method

.method public abstract setMusicAndResult(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
.end method

.method public abstract updateAlgorithmFromNormal()I
.end method
