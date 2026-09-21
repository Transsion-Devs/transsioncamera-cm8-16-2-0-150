.class public final Lcom/bytedance/ies/cutsame/util/EffectFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final format$CutSame_release(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string p0, "frame"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filterType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    if-eqz p0, :cond_18

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V

    :goto_15
    move-object p1, p0

    goto/16 :goto_268

    .line 12
    :cond_18
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    if-eqz p0, :cond_24

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V

    goto :goto_15

    .line 13
    :cond_24
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    const-string v0, "vignetting"

    const-string v1, "shadow"

    const-string v2, "highlight"

    const-string v3, "light_sensation"

    const-string v4, "contrast"

    const-string v5, "saturation"

    const-string v6, "fade"

    const-string v7, "tone"

    const-string v8, "temperature"

    const-string v9, "brightness"

    const-string v10, "particle"

    const-string v11, "sharpen"

    if-eqz p0, :cond_17a

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_29c

    goto/16 :goto_268

    :sswitch_49
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_268

    .line 22
    :cond_51
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/SharpenFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/SharpenFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto :goto_15

    .line 14
    :sswitch_59
    const-string p0, "color_filter"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_268

    .line 18
    :cond_63
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;

    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getFilterValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    invoke-direct {p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    goto :goto_15

    .line 14
    :sswitch_74
    const-string p0, "mask_filter"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_268

    .line 16
    :cond_7e
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto :goto_15

    .line 14
    :sswitch_86
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_268

    .line 30
    :cond_8e
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ParticleFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ParticleFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_97
    const-string p0, "audio volume filter"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto/16 :goto_268

    .line 31
    :cond_a1
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_aa
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_268

    .line 19
    :cond_b2
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/BrightnessFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/BrightnessFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_bb
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3

    goto/16 :goto_268

    .line 25
    :cond_c3
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/TemperatureFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/TemperatureFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_cc
    const-string p0, "canvas blend"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto/16 :goto_268

    .line 15
    :cond_d6
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_df
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_268

    .line 26
    :cond_e7
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_f0
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    goto/16 :goto_268

    .line 27
    :cond_f8
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/FadeFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/FadeFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_101
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_109

    goto/16 :goto_268

    .line 21
    :cond_109
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/SaturationFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/SaturationFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_112
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    goto/16 :goto_268

    .line 20
    :cond_11a
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ContrastFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ContrastFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_123
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12b

    goto/16 :goto_268

    .line 28
    :cond_12b
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/LightSensationFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/LightSensationFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_134
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13c

    goto/16 :goto_268

    .line 23
    :cond_13c
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/HighlightFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/HighlightFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_145
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14d

    goto/16 :goto_268

    .line 24
    :cond_14d
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ShadowFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ShadowFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_156
    const-string p0, "chroma"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_160

    goto/16 :goto_268

    .line 17
    :cond_160
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 14
    :sswitch_169
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_171

    goto/16 :goto_268

    .line 29
    :cond_171
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/VignettingFilterProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VignettingFilterProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    goto/16 :goto_15

    .line 35
    :cond_17a
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;

    if-eqz p0, :cond_187

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;)V

    goto/16 :goto_15

    .line 36
    :cond_187
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;

    if-eqz p0, :cond_19d

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;

    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;->getValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    invoke-direct {p0, p2}, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    goto/16 :goto_15

    .line 37
    :cond_19d
    instance-of p0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    if-eqz p0, :cond_277

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_2e2

    goto/16 :goto_254

    :sswitch_1aa
    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b2

    goto/16 :goto_254

    .line 42
    :cond_1b2
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getSharpenValue()D

    move-result-wide p0

    goto/16 :goto_25d

    .line 38
    :sswitch_1ba
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c2

    goto/16 :goto_254

    .line 50
    :cond_1c2
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getParticleValue()D

    move-result-wide p0

    goto/16 :goto_25d

    .line 38
    :sswitch_1ca
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d2

    goto/16 :goto_254

    .line 39
    :cond_1d2
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getBrightnessValue()D

    move-result-wide p0

    goto/16 :goto_25d

    .line 38
    :sswitch_1da
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e2

    goto/16 :goto_254

    .line 45
    :cond_1e2
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getTemperatureValue()D

    move-result-wide p0

    goto/16 :goto_25d

    .line 38
    :sswitch_1ea
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f2

    goto/16 :goto_254

    .line 46
    :cond_1f2
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getToneValue()D

    move-result-wide p0

    goto/16 :goto_25d

    .line 38
    :sswitch_1fa
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_201

    goto :goto_254

    .line 47
    :cond_201
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getFadeValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_208
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20f

    goto :goto_254

    .line 41
    :cond_20f
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getSaturationValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_216
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21d

    goto :goto_254

    .line 40
    :cond_21d
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getContrastValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_224
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22b

    goto :goto_254

    .line 48
    :cond_22b
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getLightSensationValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_232
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_239

    goto :goto_254

    .line 43
    :cond_239
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getHighlightValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_240
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_247

    goto :goto_254

    .line 44
    :cond_247
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getShadowValue()D

    move-result-wide p0

    goto :goto_25d

    .line 38
    :sswitch_24e
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_257

    :goto_254
    const-wide/16 p0, 0x0

    goto :goto_25d

    .line 49
    :cond_257
    check-cast p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->getVignettingValue()D

    move-result-wide p0

    .line 53
    :goto_25d
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    invoke-direct {p2, v0}, Lcom/bytedance/ies/cutsame/veadapter/IntensityProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    move-object p1, p2

    .line 58
    :goto_268
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 50
    const-string p1, "when (frame) {\n         \u2026let { Gson().toJson(it) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 56
    :cond_277
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected keyframe type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!! "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_29c
    .sparse-switch
        -0x5c9b6089 -> :sswitch_169
        -0x51212d8a -> :sswitch_156
        -0x35db86e0 -> :sswitch_145
        -0x289a734c -> :sswitch_134
        -0x2266222b -> :sswitch_123
        -0x21caecfe -> :sswitch_112
        -0xdbd042e -> :sswitch_101
        0x2fd67c -> :sswitch_f0
        0x366972 -> :sswitch_df
        0xf65c789 -> :sswitch_cc
        0x132cc574 -> :sswitch_bb
        0x26a22c51 -> :sswitch_aa
        0x27885c74 -> :sswitch_97
        0x46dc6e86 -> :sswitch_86
        0x5088602b -> :sswitch_74
        0x794313d4 -> :sswitch_59
        0x7a710a13 -> :sswitch_49
    .end sparse-switch

    :sswitch_data_2e2
    .sparse-switch
        -0x5c9b6089 -> :sswitch_24e
        -0x35db86e0 -> :sswitch_240
        -0x289a734c -> :sswitch_232
        -0x2266222b -> :sswitch_224
        -0x21caecfe -> :sswitch_216
        -0xdbd042e -> :sswitch_208
        0x2fd67c -> :sswitch_1fa
        0x366972 -> :sswitch_1ea
        0x132cc574 -> :sswitch_1da
        0x26a22c51 -> :sswitch_1ca
        0x46dc6e86 -> :sswitch_1ba
        0x7a710a13 -> :sswitch_1aa
    .end sparse-switch
.end method
