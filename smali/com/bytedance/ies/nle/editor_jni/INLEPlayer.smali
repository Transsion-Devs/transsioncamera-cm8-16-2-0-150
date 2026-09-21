.class public interface abstract Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addKeyframeListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;)V
.end method

.method public abstract addOnInfoListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
.end method

.method public abstract delete()V
.end method

.method public abstract destroy()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract pause()I
.end method

.method public abstract play()I
.end method

.method public abstract prepare()I
.end method

.method public abstract recycleEngine()I
.end method

.method public abstract refreshAllKeyframeInfo(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
.end method

.method public abstract refreshCurrentFrame()I
.end method

.method public abstract refreshCurrentFrame(I)I
.end method

.method public abstract releaseEngineUnitResourceAsync(Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;)I
.end method

.method public abstract releaseResource()I
.end method

.method public abstract removeOnInfoListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
.end method

.method public abstract seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I
.end method

.method public abstract seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;)I
.end method

.method public abstract seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)I
.end method

.method public abstract setFirstFrameListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;)V
.end method

.method public abstract setOnErrorListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
.end method

.method public abstract setPlayRange(JJ)I
.end method

.method public abstract setPlayRange(JJLcom/bytedance/ies/nle/editor_jni/NLESetRangeMode;)I
.end method

.method public abstract setPlayerStatusListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;)V
.end method

.method public abstract setVideoOutputListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;)V
.end method

.method public abstract state()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
.end method

.method public abstract stop()I
.end method
