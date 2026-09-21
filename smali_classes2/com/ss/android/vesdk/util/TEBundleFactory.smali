.class public Lcom/ss/android/vesdk/util/TEBundleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEBundleFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/ss/android/ttve/model/VETrackParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 7

    .line 483
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrackPriority()Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->DEFAULT:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1d

    .line 485
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrackPriority()Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->HOST:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    const-string v2, "IsHostTrack"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 488
    :cond_1d
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getLayer()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2d

    .line 489
    const-string v1, "Layer"

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getLayer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 492
    :cond_2d
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getPaths()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 493
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getPaths()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Paths"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    :cond_40
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 496
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "TrimIns"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 498
    :cond_53
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 499
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "TrimOuts"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 501
    :cond_66
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSeqIns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 502
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSeqIns()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "SequenceIns"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 504
    :cond_79
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSeqOuts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 505
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSeqOuts()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "SequenceOuts"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 507
    :cond_8c
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSpeeds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 508
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSpeeds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toDoubleArray(Ljava/util/List;)[D

    move-result-object v1

    const-string v2, "Speeds"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 510
    :cond_9f
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getExtFlag()I

    move-result v1

    if-eqz v1, :cond_ae

    .line 511
    const-string v1, "ExtFlag"

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getExtFlag()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 513
    :cond_ae
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSizes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_db

    .line 514
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 515
    new-array v2, v1, [I

    :goto_be
    if-ge v3, v1, :cond_d6

    .line 517
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VETrackParams;->getSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VESize;

    .line 518
    iget v5, v4, Lcom/ss/android/vesdk/VESize;->width:I

    shl-int/lit8 v5, v5, 0xf

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 520
    :cond_d6
    const-string p0, "Sizes"

    invoke-virtual {v0, p0, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    :cond_db
    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/TERecorderContext;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 76
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 77
    const-string v1, "RecordDir"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getRecordDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "RecordSpeed"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 79
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    const-string v2, "RenderWidth"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 80
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    const-string v2, "RenderHeight"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 81
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getMicConfig()Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "RecordMicConfig"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 82
    const-string v1, "RecordContentType"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getRecordContentType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 83
    const-string v1, "NeedPostProcess"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getNeedPostProcess()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 84
    const-string v1, "VideoPath"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "AudioPath"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getAudioPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "enableRecordEffectContentHighSpeed"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableRecordEffectContentHighSpeed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 87
    const-string v1, "enableSmallWindowDoubleThreadOpt"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableSmallWindowDoubleThreadOpt()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 88
    const-string v1, "enableEncodeBinGLContextReuse"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableEncodeBinGLContextReuse()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 89
    const-string v1, "enableEffectAmazingEngine"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableEffectAmazingEngine()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 90
    const-string v1, "enable2DEngineEffect"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnable2DEngineEffect()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 91
    const-string v1, "waitRenderScreenUntilNotify"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isWaitRenderScreenUntilNotify()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 92
    const-string v1, "enableFollowShotIndependentThread"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableFollowShotIndependentThread()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 93
    const-string v1, "AudioGraphRefactor"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableAudioGraphRefactor()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 94
    const-string v1, "useAudioGraphOutput"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isUseAudioGraphOutput()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 95
    const-string v1, "EnableReleaseGPUResource"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableReleaseGPUResource()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 96
    const-string v1, "EnableAudioDecodeTimeOpt"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->getAudioDecodeTimeOpt()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 97
    const-string v1, "EnableModelHotUpdate"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableModelHotUpdate()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 98
    const-string v1, "EnableRenderLayer"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableRenderLayer()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 99
    const-string v1, "EnablePassEffectWhenNoEffect"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderContext;->isEnablePassEffectWhenNoEffect()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 143
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 144
    const-string v1, "ChannelCount"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 145
    const-string v1, "SampleRate"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 146
    const-string v1, "Bps"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 147
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getCodec()Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "EncodeCodec"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 148
    const-string v1, "IsHW"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->isHwEnc()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEDataSource;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 104
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDataSource;->getOutputMode()Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "OutputMode"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEEffectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 6

    .line 588
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 589
    const-string v1, "effect type"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 590
    const-string v1, "int value one"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 591
    const-string v1, "int value two"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->intValueTwo:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 592
    const-string v1, "int value three"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->intValueThree:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 593
    const-string v1, "float value one"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatValueOne:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 594
    const-string v1, "float value two"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatValueTwo:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 595
    const-string v1, "float value three"

    iget v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatValueThree:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 596
    const-string v1, "bool value one"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolValueOne:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 597
    const-string v1, "bool value two"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolValueTwo:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 598
    const-string v1, "bool value three"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolValueThree:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 599
    const-string v1, "string value one"

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringValueOne:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v1, "string value two"

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringValueTwo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v1, "string value three"

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringValueThree:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->intArrayValue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    .line 603
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->intArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v3, v2

    .line 604
    :goto_73
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->intArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8c

    .line 605
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->intArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 607
    :cond_8c
    const-string v3, "int array one"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 609
    :cond_91
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatArrayValue:Ljava/util/ArrayList;

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 610
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    move v3, v2

    .line 611
    :goto_a4
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_bd

    .line 612
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->floatArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 614
    :cond_bd
    const-string v3, "float array one"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 616
    :cond_c2
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolArrayValue:Ljava/util/ArrayList;

    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 617
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v3, v2

    .line 618
    :goto_d5
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_ee

    .line 619
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEffectParams;->boolArrayValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 621
    :cond_ee
    const-string v3, "bool array one"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 623
    :cond_f3
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "string array one"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "string array two"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayThree:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string v1, "string array three"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEGetFrameSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 175
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "GetFrameMode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 177
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    const-string v2, "TargetWidth"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 178
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    const-string v2, "TargetHeight"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 179
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFitMode()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FitMode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 180
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getEffectType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "EffectType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 181
    const-string v1, "DrawToScreen"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->isDrawToScreen()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 182
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getMirrorMode()Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "MirrorMode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 183
    const-string v1, "NeedProcessAsCameraFrame"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getNeedProcessAsCameraFrame()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 184
    const-string v1, "EffectRotation"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getEffectRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 185
    const-string v1, "Rotate"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 186
    const-string v1, "NeedDelay"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getNeedDelay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 187
    const-string v1, "FrameInterval"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFrameInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 188
    const-string v1, "FileCacheDir"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFileCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "FileName"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getResultType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "ResultType"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEPreviewSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 5

    .line 153
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 154
    const-string v1, "enable3buffer"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->is3bufferEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 155
    const-string v1, "enablePreloadEffectRes"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isPreloadEffectResEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 156
    const-string v1, "effectAlgorithmRequirement"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getEffectAlgorithmRequirement()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 157
    const-string v1, "detectionMode"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isAsyncDetection()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 158
    const-string v1, "sharedTextureStatus"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEGLImageEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 159
    const-string v1, "enableEffectRT"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEffectRTEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 160
    const-string v1, "enableMakeUpBackground"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isMakeUpBackgroundEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 161
    const-string v1, "captureRenderMaxWidth"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderMaxWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 162
    const-string v1, "captureRenderFinalWidth"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderFinalWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 163
    const-string v1, "cameraFirstFrameOptimize"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isOptFirstFrame()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 164
    const-string v1, "cameraUpdateIndependentThread"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableCameraFrameUpdateIndependentThread()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 165
    const-string v1, "enableNewEffectAlgorithmAsync"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableNewEffectAlgorithmAsync()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 166
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getGraphType()Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "graphType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 167
    const-string v1, "enableTitanAutoTestLog"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableTitanAutoTestLog()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 168
    const-string v1, "enableDestroyEffectInStopPreview"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableDestroyEffectInStopPreview()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 169
    const-string v1, "MaxCountOfEncBufCache"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getMaxCountOfBufCache()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VESafeAreaParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 552
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 553
    const-string v1, "SafeType"

    iget v2, p0, Lcom/ss/android/vesdk/VESafeAreaParams;->safeType:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 554
    const-string v1, "left"

    iget v2, p0, Lcom/ss/android/vesdk/VESafeAreaParams;->left:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 555
    const-string v1, "top"

    iget v2, p0, Lcom/ss/android/vesdk/VESafeAreaParams;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 556
    const-string v1, "right"

    iget v2, p0, Lcom/ss/android/vesdk/VESafeAreaParams;->right:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 557
    const-string v1, "bottom"

    iget p0, p0, Lcom/ss/android/vesdk/VESafeAreaParams;->bottom:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 6

    .line 110
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    const-string v2, "OutputWidth"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 112
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    const-string v2, "OutputHeight"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 113
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBitrateMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "BitrateMode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 114
    const-string v1, "Bps"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 115
    const-string v1, "SwCRF"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwCRF()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 116
    const-string v1, "SwQP"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwQP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 117
    const-string v1, "SwPreset"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwPreset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 118
    const-string v1, "Fps"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 119
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFitMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FitMode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 121
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeStandard()I

    move-result v1

    .line 122
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "enable_record_mpeg4"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 123
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 124
    sget-object v2, Lcom/ss/android/vesdk/util/TEBundleFactory;->TAG:Ljava/lang/String;

    const-string v3, "setCodecType MPEG4"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 125
    :cond_84
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "ve_enable_record_hevc"

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 126
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 127
    sget-object v2, Lcom/ss/android/vesdk/util/TEBundleFactory;->TAG:Ljava/lang/String;

    const-string v3, "setCodecType HEVC"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_a1
    :goto_a1
    const-string v2, "EncodeStandard"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 130
    const-string v1, "BanExtraDataLoop"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isBanExtraDataLoop()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 132
    const-string v1, "EncodeProfile"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 133
    const-string v1, "IsHw"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHwEnc()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 134
    const-string v1, "Rotate"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getRotate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 135
    const-string v1, "Speed"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 136
    const-string v1, "Gop"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getGopSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 137
    const-string v1, "RecordingMp4"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isRecordingMp4()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 138
    const-string v1, "ResolutionAlign"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResolutionAlignment()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 564
    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v0

    if-eqz v0, :cond_28

    const/16 v1, 0x64

    if-eq v0, v1, :cond_21

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 573
    :cond_13
    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromBachAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 571
    :cond_1a
    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromEnigmaAlgorithm(Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 569
    :cond_21
    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromAudioAlgorithm(Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 567
    :cond_28
    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromFaceDetect(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 5

    .line 541
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 542
    const-string v1, "TrimIn"

    iget v2, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 543
    const-string v1, "TrimOut"

    iget v2, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 544
    const-string v1, "Speed"

    iget-wide v2, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 545
    const-string v1, "IsReverseCurveSpeed"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->isReverseCurveSpeed:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 546
    const-string v1, "CurveSpeedPointX"

    iget-object v2, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointX:[F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 547
    const-string v1, "CurveSpeedPointY"

    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointY:[F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 275
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_95

    const/16 v1, 0xf

    if-eq v0, v1, :cond_90

    const/16 v1, 0x13

    if-eq v0, v1, :cond_89

    const/16 v1, 0x16

    if-eq v0, v1, :cond_82

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_74

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_68

    const/16 v1, 0xc

    if-eq v0, v1, :cond_61

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5a

    packed-switch v0, :pswitch_data_9c

    packed-switch v0, :pswitch_data_a6

    const/4 p0, 0x0

    return-object p0

    .line 309
    :pswitch_30
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromExposureFilter(Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 302
    :pswitch_37
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromRoundFilter(Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 307
    :pswitch_3e
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromEffMIMO(Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 296
    :pswitch_45
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromBlurFilter(Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 298
    :pswitch_4c
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromEffOutputSize(Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 300
    :pswitch_53
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromEffStream(Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 279
    :cond_5a
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromReshapeFilter(Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 277
    :cond_61
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromBeautyFilter(Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 291
    :cond_68
    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromInfoSticker(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 283
    :cond_6d
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromEffectFilter(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 281
    :cond_74
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromColorFilter(Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 287
    :cond_7b
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromMakeupFilter(Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 285
    :cond_82
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromAmazingFilter(Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 294
    :cond_89
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromGPUCropFilter(Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 289
    :cond_90
    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromCanvasFilter(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    .line 305
    :cond_95
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEBaseAudioFilterParam;

    invoke-static {p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromAudioFilter(Lcom/ss/android/vesdk/filterparam/VEBaseAudioFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    return-object p0

    :pswitch_data_9c
    .packed-switch 0x1d
        :pswitch_53
        :pswitch_4c
        :pswitch_45
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x25
        :pswitch_3e
        :pswitch_37
        :pswitch_30
    .end packed-switch
.end method

.method public static from(Lcom/ss/android/vesdk/filterparam/pub/VEFilter;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 6

    .line 798
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 799
    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->visible:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 800
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "filterType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 801
    sget-object v1, Lcom/ss/android/vesdk/util/TEBundleFactory$1;->$SwitchMap$com$ss$android$ttve$common$TEDefine$TEPublicFilter:[I

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "res"

    packed-switch v1, :pswitch_data_16a

    return-object v0

    .line 868
    :pswitch_26
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;

    .line 869
    const-string v1, "animIn"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animIn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v1, "animOut"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animOut:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v1, "animInDuration"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animInDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 872
    const-string v1, "animOutDuration"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animOutDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 873
    const-string v1, "animLoop"

    iget-boolean p0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerAnimationFilter;->animLoop:Z

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0

    .line 864
    :pswitch_4c
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromInfoStickerFilterInternal(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/vesdk/filterparam/pub/VEFilter;)V

    return-object v0

    .line 850
    :pswitch_50
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;

    .line 851
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->amazingEffectMode:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v3, "amazingEffectMode"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 852
    const-string v1, "effectEndOffset"

    iget-wide v3, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->effectEndOffset:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 853
    const-string v1, "effectStartOffset"

    iget-wide v3, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->effectStartOffset:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 854
    const-string v1, "flag"

    iget-wide v3, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->flag:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 855
    const-string v1, "param"

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v1, "renderIndex"

    iget-wide v3, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->renderIndex:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 857
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->res:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 832
    :pswitch_86
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;

    .line 833
    const-string v1, "alpha"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->alpha:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 834
    const-string v1, "anchorX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->anchorX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 835
    const-string v1, "anchorY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->anchorY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 836
    const-string v1, "blendMode"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->blendMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v1, "borderColor"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->borderColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v1, "borderWidth"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->borderWidth:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 839
    const-string v1, "flipX"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->flipX:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 840
    const-string v1, "flipY"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->flipY:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 841
    const-string v1, "isAutoFitScale"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->isAutoFitScale:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 842
    const-string v1, "positionX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->positionX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 843
    const-string v1, "positionY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->positionY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 844
    const-string v1, "rotation"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->rotation:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 845
    const-string v1, "scaleX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->scaleX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 846
    const-string v1, "scaleY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VETransformFilter;->scaleY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    return-object v0

    .line 820
    :pswitch_eb
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;

    .line 821
    const-string v1, "bottomLeftX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomLeftX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 822
    const-string v1, "bottomLeftY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomLeftY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 823
    const-string v1, "bottomRightX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomRightX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 824
    const-string v1, "bottomRightY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->bottomRightY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 825
    const-string v1, "topLeftX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topLeftX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 826
    const-string v1, "topLeftY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topLeftY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 827
    const-string v1, "topRightX"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topRightX:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 828
    const-string v1, "topRightY"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCropFilter;->topRightY:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    return-object v0

    .line 810
    :pswitch_126
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;

    .line 811
    const-string v1, "blur"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->blur:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 812
    const-string v1, "color"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->color:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v1, "enableAntiAliasing"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->enableAntiAliasing:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 814
    const-string v1, "image"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v1, "gradientTopColor"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->gradientTopColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v1, "gradientBottomColor"

    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoCanvasFilter;->gradientBottomColor:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 803
    :pswitch_153
    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;

    .line 804
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->res:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 806
    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/ss/android/vesdk/filterparam/pub/VEVideoAnimationFilter;->endTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    return-object v0

    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_153
        :pswitch_126
        :pswitch_eb
        :pswitch_86
        :pswitch_50
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_26
    .end packed-switch
.end method

.method public static from(Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 206
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 207
    const-string v1, "SceneMode"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->sceneMode:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 208
    const-string v1, "Amount"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->amount:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 209
    const-string v1, "OverRatio"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->overRatio:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 210
    const-string v1, "EdgeWeightGamma"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->edgeWeightGamma:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 211
    const-string v1, "DiffImgSmoothEnable"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->diffImgSmoothEnable:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 212
    const-string v1, "PowerLevelPara"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->powerLevelPara:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 213
    const-string v1, "InitDelayFrameCnt"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->initDelayFrameCnt:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 214
    const-string v1, "ProcessDelayFrameCnt"

    iget p0, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->processDelayFrameCnt:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/lens/VELumaDetectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 7

    .line 221
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 222
    const-string v1, "Iso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->iso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 223
    const-string v1, "MinIso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->minIso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 224
    const-string v1, "MaxIso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->maxIso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 225
    const-string v1, "ExposureTime"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->exposureTime:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 226
    const-string v1, "MinExposureTime"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->minExposureTime:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 227
    const-string v1, "MaxExposureTime"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->maxExposureTime:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 228
    const-string v1, "EcStep"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->ecStep:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 229
    iget v1, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    const-string v2, "Flag"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 230
    const-string v1, "DetectFrames"

    iget v3, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->detectFrames:I

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 231
    const-string v1, "FaceNum"

    iget v3, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->faceNum:I

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 232
    iget v1, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 233
    iget v1, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->faceNum:I

    if-nez v1, :cond_54

    goto :goto_80

    :cond_54
    const/4 v1, 0x0

    .line 236
    :goto_55
    iget v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->faceNum:I

    if-ge v1, v2, :cond_80

    .line 237
    iget-object v2, p0, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->faceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    filled-new-array {v3, v4, v5, v2}, [I

    move-result-object v2

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceRect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_80
    :goto_80
    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 7

    .line 244
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 245
    const-string v1, "Iso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->iso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 246
    const-string v1, "MinIso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->minIso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 247
    const-string v1, "MaxIso"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->maxIso:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 248
    const-string v1, "IsFirstFrame"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->isFirstFrame:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 249
    const-string v1, "FaceNum"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->faceNum:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 250
    const-string v1, "Flag"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 251
    iget v1, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->faceNum:I

    if-nez v1, :cond_33

    goto :goto_5f

    :cond_33
    const/4 v1, 0x0

    .line 254
    :goto_34
    iget v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->faceNum:I

    if-ge v1, v2, :cond_5f

    .line 255
    iget-object v2, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->faceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    filled-new-array {v3, v4, v5, v2}, [I

    move-result-object v2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceRect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 263
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 264
    const-string v1, "CropList"

    iget-object v2, p0, Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;->cropList:[F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 265
    const-string v1, "MaxAlpha"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;->maxAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 266
    const-string v1, "MaxVelocity"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;->maxVelocity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 267
    const-string v1, "Flag"

    iget p0, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 195
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 196
    const-string v1, "DetectFrequency"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->detectFrequency:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 197
    const-string v1, "ModelPath"

    iget-object v2, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->modelPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "KernelBinPath"

    iget-object v2, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->kernelBinPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "BackendType"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->backendType:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 200
    const-string v1, "NumThread"

    iget v2, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->numThread:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 201
    const-string v1, "DetectRepeatNum"

    iget p0, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->detectRepeatNum:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/model/VEPrePlayParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 526
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 527
    const-string v1, "Duration"

    iget v2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 528
    const-string v1, "IsLoop"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 529
    const-string v1, "StopStrategy"

    iget p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static from(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 534
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 535
    const-string v1, "Sync"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->getSync()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 536
    const-string v1, "RebuildTimeline"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->getRebuildTimeline()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static fromAmazingFilter(Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 362
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 363
    const-string v1, "amazing path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "amazing param"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "amazing order"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 366
    const-string v1, "amazing type"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static fromAudioAlgorithm(Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 761
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 762
    const-string v1, "Model"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;->getModelPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static fromAudioFilter(Lcom/ss/android/vesdk/filterparam/VEBaseAudioFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 6

    .line 737
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 738
    const-string v1, "FilterName"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string v2, "loudness balance"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 740
    move-object v1, p0

    check-cast v1, Lcom/ss/android/vesdk/filterparam/VEAudioLoudnessBalanceFilter;

    .line 741
    const-string v2, "target_lufs"

    iget-wide v3, v1, Lcom/ss/android/vesdk/filterparam/VEAudioLoudnessBalanceFilter;->targetLoudness:D

    invoke-virtual {v0, v2, v3, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 743
    :cond_1f
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string v2, "audio speed filter"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 744
    move-object v1, p0

    check-cast v1, Lcom/ss/android/vesdk/filterparam/VEAudioSpeedFilterParam;

    .line 745
    const-string v2, "audio_speed"

    iget v1, v1, Lcom/ss/android/vesdk/filterparam/VEAudioSpeedFilterParam;->speed:F

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 747
    :cond_33
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string v2, "audio volume filter"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 748
    move-object v1, p0

    check-cast v1, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;

    .line 749
    const-string v2, "audio_volume"

    iget v1, v1, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;->volume:F

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 752
    :cond_47
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string v2, "audio acoustic echo cancellation filter"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 753
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;

    .line 754
    const-string v1, "Model"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;->getModelPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-object v0
.end method

.method public static fromBachAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 791
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 792
    const-string v1, "graphName"

    iget-object v2, p0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;->graphName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v1, "algorithmConfig"

    iget-object p0, p0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;->algorithmConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static fromBeautyFilter(Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 315
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 316
    const-string v1, "beauty name"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->beautyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "beauty type"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->beautyType:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 318
    const-string v1, "brighten intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->brightenIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 319
    const-string v1, "smooth intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->smoothIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 320
    const-string v1, "shape intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->sharpIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 321
    const-string v1, "skintone path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->skinTonePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "skintone intensity"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->skinToneIntensity:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromBlurFilter(Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 696
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 697
    const-string v1, "intensity"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;->intensity:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromCanvasFilter(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 8

    .line 380
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 381
    instance-of v1, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    if-eqz v1, :cond_35

    .line 382
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    .line 383
    const-string v1, "canvas type"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 384
    const-string v1, "blur radius"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->radius:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 385
    const-string v1, "color background"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->color:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 386
    const-string v1, "image path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v1, "engine video width"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 388
    const-string v1, "engine video height"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0

    .line 389
    :cond_35
    instance-of v1, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    if-eqz v1, :cond_b4

    .line 390
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    .line 391
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    sget-object v2, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_ANIMATION_AND_ANIMATION:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    .line 392
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_49

    move v1, v4

    goto :goto_4a

    :cond_49
    move v1, v3

    .line 393
    :goto_4a
    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    sget-object v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_TRANSFORM:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    .line 394
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_56

    move v2, v4

    goto :goto_57

    :cond_56
    move v2, v3

    .line 395
    :goto_57
    iget v5, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    sget-object v6, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_ANIMATION:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    .line 396
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_62

    move v3, v4

    :cond_62
    if-nez v2, :cond_66

    if-eqz v1, :cond_97

    .line 398
    :cond_66
    const-string v2, "video scale"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 399
    const-string v2, "video rotate"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->degree:F

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 400
    const-string v2, "video tranx x"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 401
    const-string v2, "video_tranx_y"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 402
    const-string v2, "video_mirror"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->mirror:I

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 403
    const-string v2, "video_blend_mode path"

    iget-object v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->blendModePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v2, "video_alpha"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    :cond_97
    if-nez v3, :cond_9b

    if-eqz v1, :cond_b4

    .line 407
    :cond_9b
    const-string v1, "animation path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animStartTime:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v2, "animation start time"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 409
    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animEndTime:I

    mul-int/lit16 p0, p0, 0x3e8

    const-string v1, "animation end time"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    :cond_b4
    return-object v0
.end method

.method public static fromCaptureSettings(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 728
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 729
    const-string v1, "SampleRate"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 730
    const-string v1, "Channels"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 731
    const-string v1, "FramesPerBuffer"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getFramesPerBuffer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 732
    const-string v1, "BitsPerSample"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getBitSamples()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static fromColorFilter(Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 335
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 336
    const-string v1, "left filter"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->leftFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v1, "right filter"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v1, "left filter intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->intensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 339
    const-string v1, "right filter intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 340
    const-string v1, "use filter res intensity"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->useFilterResIntensity:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 341
    const-string v1, "filter use v3"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->useFilterV3:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 342
    const-string v1, "filter position"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->position:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromEffMIMO(Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 782
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 783
    const-string v1, "LayoutWidth"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->layoutWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 784
    const-string v1, "LayoutHeight"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->layoutHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 785
    const-string v1, "CamOutWidth"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->camOutWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 786
    const-string v1, "CamOutHeight"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->camOutHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static fromEffOutputSize(Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 714
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 715
    const-string v1, "width"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 716
    const-string v1, "height"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static fromEffStream(Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 721
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 722
    const-string v1, "StreamFlags"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->streamFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 723
    const-string v1, "extra string"

    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->extraString:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static fromEffectFilter(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 347
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 348
    const-string v1, "effect res path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v1, "effect sticker id"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerId:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 350
    const-string v1, "effect req id"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 351
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->timeout:I

    int-to-float v1, v1

    const-string v2, "Timeout"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 352
    const-string v1, "effect need reload"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->needReload:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 353
    const-string v1, "effect sticker tag"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v1, "effect sync load resource"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->isSyncLoadResource:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 355
    const-string v1, "effect composer tags"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerTags:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    const-string v1, "effect composer values"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerValues:[F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 357
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectFilterType:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam$EffectFilterType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "effect filter type"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method

.method public static fromEnigmaAlgorithm(Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 5

    .line 767
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 768
    const-string v1, "detectRectLeft"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 769
    const-string v1, "detectRectTop"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 770
    const-string v1, "detectRectWidth"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 771
    const-string v1, "detectRectHeight"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 772
    const-string v1, "enableDetectRect"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 773
    const-string v1, "scanMode"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 774
    const-string v1, "detectRequirement"

    iget-wide v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 775
    const-string v1, "codeType"

    iget v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 776
    const-string v1, "decodeMultiple"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 777
    const-string v1, "enhanceCamera"

    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enhanceCamera:Z

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static fromExposureFilter(Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 708
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 709
    const-string v1, "exposure"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;->exposure:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromFaceDetect(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 579
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 580
    const-string v1, "interval"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->getDectectIntervalTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 581
    const-string v1, "is image mode"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->isImageMode()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 582
    const-string v1, "is fast mode"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->isUseFastModel()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 583
    const-string v1, "for init"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getForInit()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static fromGPUCropFilter(Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 7

    .line 471
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    array-length v1, v1

    .line 473
    const-string v2, "video crop nodes count"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2a

    .line 476
    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    aget v3, v3, v2

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video crop nodes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2a
    return-object v0
.end method

.method public static fromGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 7

    .line 631
    invoke-virtual {p0}, Lcom/ss/android/vesdk/gesture/VEGesture;->getInternalEvent()Lcom/ss/android/vesdk/gesture/VEGesture$Event;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 634
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v1

    .line 635
    invoke-virtual {p0}, Lcom/ss/android/vesdk/gesture/VEGesture$Event;->getEventType()Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "processGestureEventType"

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 636
    sget-object v2, Lcom/ss/android/vesdk/util/TEBundleFactory$1;->$SwitchMap$com$ss$android$vesdk$gesture$VEGesture$EventType:[I

    invoke-virtual {p0}, Lcom/ss/android/vesdk/gesture/VEGesture$Event;->getEventType()Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "y"

    const-string v4, "x"

    const-string v5, "factor"

    packed-switch v2, :pswitch_data_92

    return-object v0

    .line 671
    :pswitch_2f
    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$RotateEvent;

    .line 672
    const-string v0, "rotation"

    iget v2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$RotateEvent;->rotation:F

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 673
    iget p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$RotateEvent;->factor:F

    invoke-virtual {v1, v5, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v1

    .line 664
    :pswitch_3e
    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$ScaleEvent;

    .line 665
    const-string v0, "scale"

    iget v2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$ScaleEvent;->scale:F

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 666
    iget p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$ScaleEvent;->factor:F

    invoke-virtual {v1, v5, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v1

    .line 654
    :pswitch_4d
    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;

    .line 655
    iget v0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->x:F

    invoke-virtual {v1, v4, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 656
    iget v0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->y:F

    invoke-virtual {v1, v3, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 657
    const-string v0, "dx"

    iget v2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->dx:F

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 658
    const-string v0, "dy"

    iget v2, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->dy:F

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 659
    iget p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$PanEvent;->factor:F

    invoke-virtual {v1, v5, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v1

    .line 647
    :pswitch_6d
    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchWithGestureEvent;

    .line 648
    iget v0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->x:F

    invoke-virtual {v1, v4, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 649
    iget v0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->y:F

    invoke-virtual {v1, v3, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 650
    iget-object p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchWithGestureEvent;->gestureType:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v0, "gestureType"

    invoke-virtual {v1, v0, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v1

    .line 640
    :pswitch_85
    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;

    .line 641
    iget v0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->x:F

    invoke-virtual {v1, v4, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 642
    iget p0, p0, Lcom/ss/android/vesdk/gesture/VEGesture$TouchEvent;->y:F

    invoke-virtual {v1, v3, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v1

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_6d
        :pswitch_6d
        :pswitch_4d
        :pswitch_3e
        :pswitch_2f
    .end packed-switch
.end method

.method public static fromInfoSticker(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 6

    .line 416
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 417
    instance-of v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;

    if-eqz v1, :cond_f8

    .line 418
    check-cast p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;

    .line 420
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    array-length v3, v1

    if-lez v3, :cond_3d

    .line 421
    aget-object v1, v1, v2

    const-string v3, "lv_new_text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 422
    const-string v1, "entity type new engine text"

    goto :goto_3f

    .line 423
    :cond_1f
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "lv_info_sticker_template"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 424
    const-string v1, "entity type text template"

    goto :goto_3f

    .line 425
    :cond_2e
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "lv_rich_text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 426
    const-string v1, "entity type rich text"

    goto :goto_3f

    .line 429
    :cond_3d
    const-string v1, "entity type default"

    :goto_3f
    const-string v3, "entity type"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v1, "entity param"

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 431
    const-string v1, "entity is richtext"

    iget-boolean v3, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 432
    const-string v1, "entity path"

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v1, "entity enable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 434
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v4, "entity start time"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 435
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v4, "entity end time"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 436
    const-string v1, "entity mode"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 437
    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->templateParam:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 438
    const-string v4, "entity template param"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_7f
    const-string v1, "entity position x"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 442
    const-string v1, "entity position y"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 443
    const-string v1, "entity rotation"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 444
    const-string v1, "entity scale x"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 445
    const-string v1, "entity scale y"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 446
    const-string v1, "entity alpha"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 447
    const-string v1, "entity layer"

    iget v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 448
    const-string v1, "entity flip x"

    iget-boolean v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 449
    const-string v1, "entity flip y"

    iget-boolean v4, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 451
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    const-string v1, "animation_set"

    if-eqz p0, :cond_f4

    .line 453
    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 454
    const-string v1, "animation_enable"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 455
    const-string v1, "animation_loop"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->loop:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 456
    const-string v1, "animation_in_type"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->inPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->inDuration:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v2, "animation_in_duration"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 458
    const-string v1, "animation_out_type"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->outPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->outDuration:I

    mul-int/lit16 p0, p0, 0x3e8

    const-string v1, "animation_out_duration"

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0

    .line 461
    :cond_f4
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0

    .line 464
    :cond_f8
    sget-object p0, Lcom/ss/android/vesdk/util/TEBundleFactory;->TAG:Ljava/lang/String;

    const-string v0, "fromInfoSticker... param is not based on VEInfoStickerFilterParam."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static fromInfoStickerFilterInternal(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/vesdk/filterparam/pub/VEFilter;)V
    .registers 5

    .line 881
    instance-of v0, p1, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;

    if-eqz v0, :cond_149

    .line 882
    check-cast p1, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;

    .line 883
    const-string v0, "isBuffered"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;->isBuffered:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 884
    iget-object v0, p1, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;->param:[Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 885
    const-string v1, "param"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 887
    :cond_16
    const-string v0, "res"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;->res:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    instance-of v0, p1, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;

    if-eqz v0, :cond_32

    .line 889
    move-object v0, p1

    check-cast v0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;

    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;->dependentResourceParam:Ljava/lang/String;

    const-string v2, "dependentResourceParam"

    invoke-virtual {p0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string v1, "json"

    iget-object v0, v0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;->json:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_32
    instance-of v0, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;

    if-eqz v0, :cond_149

    .line 893
    check-cast p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;

    iget-object v0, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->text:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v0, "fontSize"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fontSize:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 895
    const-string v0, "alignType"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->alignType:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 896
    const-string v0, "textColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->textColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "effectPath"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->effectPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "textAlpha"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->textAlpha:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 899
    const-string v0, "backgroundColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "backgroundAlpha"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->backgroundAlpha:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 901
    const-string v0, "background"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->background:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 902
    const-string v0, "boldWidth"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->boldWidth:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 903
    const-string v0, "shadow"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadow:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 904
    const-string v0, "shadowColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v0, "shadowAlpha"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowAlpha:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 906
    const-string v0, "shadowSmoothing"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowSmoothing:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 907
    const-string v0, "shadowOffsetX"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowOffsetX:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 908
    const-string v0, "shadowOffsetY"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shadowOffsetY:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 909
    const-string v0, "outlineColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v0, "outlineAlpha"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineAlpha:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 911
    const-string v0, "outline"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outline:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 912
    const-string v0, "outlineWidth"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->outlineWidth:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 913
    const-string v0, "charSpacing"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->charSpacing:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 914
    const-string v0, "fontPath"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fontPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v0, "shapePath"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapePath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v0, "innerPadding"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->innerPadding:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 917
    const-string v0, "italicDegree"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->italicDegree:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 918
    const-string v0, "lineMaxWidth"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->lineMaxWidth:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 919
    const-string v0, "fallbackFontPath"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fallbackFontPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v0, "fallbackFontPathList"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->fallbackFontPathList:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v0, "lineGap"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->lineGap:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 922
    const-string v0, "useEffectDefaultColor"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->useEffectDefaultColor:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 923
    const-string v0, "shapeFlipX"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapeFlipX:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 924
    const-string v0, "shapeFlipY"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->shapeFlipY:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 925
    const-string v0, "typeSettingKind"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->typeSettingKind:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 926
    const-string v0, "underline"

    iget-boolean v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underline:Z

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 927
    const-string v0, "underlineOffset"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underlineOffset:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 928
    const-string v0, "underlineWidth"

    iget-wide v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->underlineWidth:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 929
    const-string v0, "ktvColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v0, "ktvOutlineColor"

    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvOutlineColor:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v0, "ktvShadowColor"

    iget-object p1, p1, Lcom/ss/android/vesdk/filterparam/pub/VETextStickerFilter;->ktvShadowColor:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    return-void
.end method

.method public static fromMakeupFilter(Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 371
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 372
    const-string v1, "makeup res path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v1, "makeup lip intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->lipIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 374
    const-string v1, "makeup blusher Intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->blusherIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 375
    const-string v1, "enable male makeup state"

    iget-boolean p0, p0, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->maleMakeupState:Z

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    return-object v0
.end method

.method public static fromReshapeFilter(Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 4

    .line 327
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 328
    const-string v1, "reshape res path"

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v1, "reshape eye intensity"

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->eyeIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 330
    const-string v1, "reshape cheek intensity"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->cheekIntensity:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromRoundFilter(Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 3

    .line 702
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 703
    const-string v1, "Radius"

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;->radius:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    return-object v0
.end method

.method public static fromTouchPointer(Lcom/ss/android/vesdk/VETouchPointer;I)Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 5

    .line 684
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 685
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ProcessTouchEventType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 686
    const-string v1, "PointerID"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getPointerId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 687
    const-string v1, "x"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 688
    const-string v1, "y"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 689
    const-string v1, "force"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getForce()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 690
    const-string v1, "majorRadius"

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VETouchPointer;->getMajorRadius()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 691
    const-string p0, "pointerCount"

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    return-object v0
.end method
