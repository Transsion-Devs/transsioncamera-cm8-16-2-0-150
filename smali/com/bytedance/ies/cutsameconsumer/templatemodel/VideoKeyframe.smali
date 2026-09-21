.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;
.super Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;
.source "SourceFile"


# instance fields
.field handler:J

.field released:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(J)V

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    .line 18
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(J)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 10
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 24
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    .line 25
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    return-void
.end method

.method public static native getAlphaNative(J)D
.end method

.method public static native getBrightnessValueNative(J)D
.end method

.method public static native getChromaIntensityNative(J)D
.end method

.method public static native getChromaShadowNative(J)D
.end method

.method public static native getContrastValueNative(J)D
.end method

.method public static native getFadeValueNative(J)D
.end method

.method public static native getFilterValueNative(J)D
.end method

.method public static native getHighlightValueNative(J)D
.end method

.method public static native getLastVolumeNative(J)D
.end method

.method public static native getLightSensationValueNative(J)D
.end method

.method public static native getMaskConfigNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;
.end method

.method public static native getParticleValueNative(J)D
.end method

.method public static native getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getRotationNative(J)D
.end method

.method public static native getSaturationValueNative(J)D
.end method

.method public static native getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getShadowValueNative(J)D
.end method

.method public static native getSharpenValueNative(J)D
.end method

.method public static native getTemperatureValueNative(J)D
.end method

.method public static native getToneValueNative(J)D
.end method

.method public static native getVignettingValueNative(J)D
.end method

.method public static native getVolumeNative(J)D
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAlphaNative(JD)V
.end method

.method public static native setBrightnessValueNative(JD)V
.end method

.method public static native setChromaIntensityNative(JD)V
.end method

.method public static native setChromaShadowNative(JD)V
.end method

.method public static native setContrastValueNative(JD)V
.end method

.method public static native setFadeValueNative(JD)V
.end method

.method public static native setFilterValueNative(JD)V
.end method

.method public static native setHighlightValueNative(JD)V
.end method

.method public static native setLastVolumeNative(JD)V
.end method

.method public static native setLightSensationValueNative(JD)V
.end method

.method public static native setMaskConfigNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)V
.end method

.method public static native setParticleValueNative(JD)V
.end method

.method public static native setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setRotationNative(JD)V
.end method

.method public static native setSaturationValueNative(JD)V
.end method

.method public static native setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setShadowValueNative(JD)V
.end method

.method public static native setSharpenValueNative(JD)V
.end method

.method public static native setTemperatureValueNative(JD)V
.end method

.method public static native setToneValueNative(JD)V
.end method

.method public static native setVignettingValueNative(JD)V
.end method

.method public static native setVolumeNative(JD)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 39
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VideoKeyframe is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 30
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->released:Z

    .line 33
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    .line 34
    invoke-super {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 49
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAlpha()D
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getAlphaNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBrightnessValue()D
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getBrightnessValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getChromaIntensity()D
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getChromaIntensityNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getChromaShadow()D
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getChromaShadowNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getContrastValue()D
    .registers 3

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getContrastValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFadeValue()D
    .registers 3

    .line 118
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getFadeValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFilterValue()D
    .registers 3

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getFilterValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method getHandler()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    return-wide v0
.end method

.method public getHighlightValue()D
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getHighlightValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVolume()D
    .registers 3

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getLastVolumeNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLightSensationValue()D
    .registers 3

    .line 162
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 163
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getLightSensationValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 174
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfigNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object p0

    return-object p0
.end method

.method public getParticleValue()D
    .registers 3

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 185
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getParticleValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 195
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 196
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()D
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 207
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getRotationNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSaturationValue()D
    .registers 3

    .line 217
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 218
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getSaturationValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 229
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getShadowValue()D
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 240
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getShadowValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSharpenValue()D
    .registers 3

    .line 250
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 251
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getSharpenValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTemperatureValue()D
    .registers 3

    .line 261
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 262
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getTemperatureValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getToneValue()D
    .registers 3

    .line 272
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 273
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getToneValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVignettingValue()D
    .registers 3

    .line 283
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 284
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getVignettingValueNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVolume()D
    .registers 3

    .line 294
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 295
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getVolumeNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setAlpha(D)V
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setAlphaNative(JD)V

    return-void
.end method

.method public setBrightnessValue(D)V
    .registers 5

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setBrightnessValueNative(JD)V

    return-void
.end method

.method public setChromaIntensity(D)V
    .registers 5

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setChromaIntensityNative(JD)V

    return-void
.end method

.method public setChromaShadow(D)V
    .registers 5

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setChromaShadowNative(JD)V

    return-void
.end method

.method public setContrastValue(D)V
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setContrastValueNative(JD)V

    return-void
.end method

.method public setFadeValue(D)V
    .registers 5

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setFadeValueNative(JD)V

    return-void
.end method

.method public setFilterValue(D)V
    .registers 5

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setFilterValueNative(JD)V

    return-void
.end method

.method public setHighlightValue(D)V
    .registers 5

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setHighlightValueNative(JD)V

    return-void
.end method

.method public setLastVolume(D)V
    .registers 5

    .line 156
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 157
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setLastVolumeNative(JD)V

    return-void
.end method

.method public setLightSensationValue(D)V
    .registers 5

    .line 167
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setLightSensationValueNative(JD)V

    return-void
.end method

.method public setMaskConfig(Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)V
    .registers 4

    .line 178
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setMaskConfigNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)V

    return-void
.end method

.method public setParticleValue(D)V
    .registers 5

    .line 189
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setParticleValueNative(JD)V

    return-void
.end method

.method public setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 201
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 212
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setRotationNative(JD)V

    return-void
.end method

.method public setSaturationValue(D)V
    .registers 5

    .line 222
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 223
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setSaturationValueNative(JD)V

    return-void
.end method

.method public setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 233
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 234
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setShadowValue(D)V
    .registers 5

    .line 244
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 245
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setShadowValueNative(JD)V

    return-void
.end method

.method public setSharpenValue(D)V
    .registers 5

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 256
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setSharpenValueNative(JD)V

    return-void
.end method

.method public setTemperatureValue(D)V
    .registers 5

    .line 266
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 267
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setTemperatureValueNative(JD)V

    return-void
.end method

.method public setToneValue(D)V
    .registers 5

    .line 277
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 278
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setToneValueNative(JD)V

    return-void
.end method

.method public setVignettingValue(D)V
    .registers 5

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 289
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setVignettingValueNative(JD)V

    return-void
.end method

.method public setVolume(D)V
    .registers 5

    .line 299
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 300
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setVolumeNative(JD)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->ensureSurvive()V

    .line 54
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
