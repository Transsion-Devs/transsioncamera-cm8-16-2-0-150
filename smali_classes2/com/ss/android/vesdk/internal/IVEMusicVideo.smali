.class public interface abstract Lcom/ss/android/vesdk/internal/IVEMusicVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addMVFilterInternal(I)V
.end method

.method public abstract changeMvUserVideoInfoInternal(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
.end method

.method public abstract clearNativeFromMV()V
.end method

.method public abstract getMVBackgroundAudioRid()I
.end method

.method public abstract getMVBackgroundAudioTrackIndex()I
.end method

.method public abstract getMVInfo()Lcom/ss/android/ttve/model/MVInfoBean;
.end method

.method public abstract getMVKaraokeAudioIndex()I
.end method

.method public abstract getMVOriginalBackgroundAudio()Lcom/ss/android/vesdk/VEMVAudioInfo;
.end method

.method public abstract getMVUserVideoInfo(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getServerAlgorithmConfig()Lcom/ss/android/vesdk/VEMVAlgorithmConfig;
.end method

.method public abstract initMV(Lcom/ss/android/vesdk/VEMVParams;)I
.end method

.method public abstract initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
.end method

.method public abstract isMVInitialedInternal()Z
.end method

.method public abstract setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_IN_TYPE;)I
.end method

.method public abstract setListenerForMV(Lcom/ss/android/vesdk/VEListener$VEMVInitListener;)V
.end method

.method public abstract setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I
.end method

.method public abstract setMVDataJson(Ljava/lang/String;)I
.end method

.method public abstract setMvOriginalAudio(ZF)I
.end method

.method public abstract updateMVBackgroundAudioTrack(Ljava/lang/String;II)I
.end method

.method public abstract updateMVBackgroundAudioTrack2(Ljava/lang/String;II)I
.end method

.method public abstract updateMVResources(Lcom/ss/android/vesdk/VEMVParams;)I
.end method

.method public abstract updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
.end method

.method public abstract updateMVResourcesRecreateEngine(Lcom/ss/android/vesdk/VEMVParams;)I
.end method

.method public abstract updateMVResourcesRecreateEngine(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method
