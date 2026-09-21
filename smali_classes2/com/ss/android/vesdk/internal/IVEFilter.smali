.class public interface abstract Lcom/ss/android/vesdk/internal/IVEFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAudioCleanFilter(IIII)I
.end method

.method public abstract addAudioCommonFilter(IILjava/lang/String;[BIILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
.end method

.method public abstract addAudioDRCFilter(I[FII)I
.end method

.method public abstract addAudioEffects(II[I[I[Lcom/ss/android/vesdk/VEAudioEffectBean;)[I
.end method

.method public abstract addCherEffect(IILcom/ss/android/vesdk/VECherEffectParam;)[I
.end method

.method public abstract addEqualizer(IIIII)I
.end method

.method public abstract addEqualizer(ILcom/ss/android/vesdk/VEEqualizerParams;II)I
.end method

.method public abstract addFFmpegPitchTempo(IFFII)I
.end method

.method public abstract addFadeInFadeOut(IIIIII)I
.end method

.method public abstract addFilterEffects([I[I[Ljava/lang/String;)[I
.end method

.method public abstract addFilterEffects([I[I[Ljava/lang/String;[Z[I[I)[I
.end method

.method public abstract addFilterEffectsWithTag([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;)[I
.end method

.method public abstract addFilterEffectsWithTagSync([I[I[Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)[I
.end method

.method public abstract addLoudnessFilter(IFII)I
.end method

.method public abstract addPitchTempo(IIFFII)I
.end method

.method public abstract addRepeatEffect(IIIII)I
.end method

.method public abstract addReverb(ILjava/lang/String;II)I
.end method

.method public abstract addReverb2(ILcom/ss/android/vesdk/VEReverb2Params;II)I
.end method

.method public abstract addSlowMotionEffect(IIIIFF)I
.end method

.method public abstract addTimeEffect(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
.end method

.method public abstract addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
.end method

.method public abstract addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I
.end method

.method public abstract appendComposerNodes([Ljava/lang/String;)I
.end method

.method public abstract appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method public abstract changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I
.end method

.method public abstract changeTransitionAt(ILjava/lang/String;)I
.end method

.method public abstract checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract clearNativeFromFilter()V
.end method

.method public abstract deleteAICutOutClipParam(I)I
.end method

.method public abstract deleteAudioFilters([I)I
.end method

.method public abstract deleteFilterEffects([I)I
.end method

.method public abstract deleteFilters([I)I
.end method

.method public abstract deleteRepeatEffect(I)I
.end method

.method public abstract deleteSlowEffect(I)I
.end method

.method public abstract deleteTimeEffect(I)I
.end method

.method public abstract disableAudioEffect(II)I
.end method

.method public abstract disableFilterEffect(II)I
.end method

.method public abstract enableAudioCommonFilter(IILjava/lang/String;[BILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
.end method

.method public abstract enableAudioEffect(IIILcom/ss/android/vesdk/VEAudioEffectBean;)I
.end method

.method public abstract enableAudioEffect(ILcom/ss/android/vesdk/VEAudioEffectBean;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableFilterEffect(ILjava/lang/String;)I
.end method

.method public abstract enableFilterEffect(ILjava/lang/String;ZII)I
.end method

.method public abstract enableFilterEffectWithTag(ILjava/lang/String;IILjava/lang/String;)I
.end method

.method public abstract enableHDRSetting(Z)V
.end method

.method public abstract excAICutOutTask()I
.end method

.method public abstract getAudioFilterIndexInternal()I
.end method

.method public abstract getClipMattingProgress(I)F
.end method

.method public abstract getColorFilterIndexInternal()I
.end method

.method public abstract getColorFilterIntensity(Ljava/lang/String;)F
.end method

.method public abstract getCurColorFilterInternal()Lcom/ss/android/ttve/model/FilterBean;
.end method

.method public abstract getHDRFilterIndexInternal()I
.end method

.method public abstract getLensHDRFilterIndexInternal()I
.end method

.method public abstract getMusicSrtIndexInternal()I
.end method

.method public abstract getProjectMattingProgress()F
.end method

.method public abstract initColorFilter()I
.end method

.method public abstract initFiltersInternal()I
.end method

.method public abstract initFiltersInternal(Lcom/ss/android/vesdk/VEEditorModel;)I
.end method

.method public abstract mapOriginalPositionToTimeEffectPosition(I)I
.end method

.method public abstract mapTimeEffectDurationToOriginalDuration(I)I
.end method

.method public abstract mapTimeEffectPositionToOriginalPosition(I)I
.end method

.method public abstract reloadComposerNodes([Ljava/lang/String;)I
.end method

.method public abstract reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method public abstract removeComposerNodes([Ljava/lang/String;)I
.end method

.method public abstract replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method public abstract setAudioFilterIndexInternal(I)V
.end method

.method public abstract setAudioOffset(II)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;F)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;FZZ)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;Ljava/lang/String;FF)I
.end method

.method public abstract setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I
.end method

.method public abstract setColorFilterIndexInternal(I)V
.end method

.method public abstract setColorFilterNew(Ljava/lang/String;F)I
.end method

.method public abstract setColorFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I
.end method

.method public abstract setComposerMode(II)I
.end method

.method public abstract setComposerNodes([Ljava/lang/String;)I
.end method

.method public abstract setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method public abstract setCurColorFilterInternal(Lcom/ss/android/ttve/model/FilterBean;)V
.end method

.method public abstract setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
.end method

.method public abstract setDldEnabled(Z)V
.end method

.method public abstract setDldThrVal(I)V
.end method

.method public abstract setDleEnabled(Z)V
.end method

.method public abstract setDleEnabledPreview(Z)V
.end method

.method public abstract setEffectCacheInt(ILjava/lang/String;I)I
.end method

.method public abstract setEffectHDRFilter(ILjava/lang/String;F)I
.end method

.method public abstract setEffectHDRFilter(Ljava/lang/String;)I
.end method

.method public abstract setEffectHDRFilter(Ljava/lang/String;F)I
.end method

.method public abstract setEnableMultipleAudioFilter(Z)V
.end method

.method public abstract setFilterInTimeOffset(II)I
.end method

.method public abstract setHDRFilterIndexInternal(I)V
.end method

.method public abstract setLensHDRFilter(Ljava/lang/String;D)I
.end method

.method public abstract setLensHDRFilterIndexInternal(I)V
.end method

.method public abstract setMaleMakeupState(Z)I
.end method

.method public abstract setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
.end method

.method public abstract setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;Z)I
.end method

.method public abstract setMusicSrtIndexInternal(I)V
.end method

.method public abstract setTrackFilterEnable(IZZ)I
.end method

.method public abstract setTransitionAt(JLjava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startEffectMonitor()V
.end method

.method public abstract stopEffectMonitor()V
.end method

.method public abstract updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I
.end method

.method public abstract updateClipFilterTime(IIII)I
.end method

.method public abstract updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method public abstract updateFiltersInternal()V
.end method

.method public abstract updateLoudnessFilter(IF)V
.end method

.method public abstract updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
.end method

.method public abstract updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
.end method

.method public abstract updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
.end method

.method public abstract updateTrackFilterTime(III)I
.end method
