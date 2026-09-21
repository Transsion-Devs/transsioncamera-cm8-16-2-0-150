.class public final Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAsBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z
    .registers 4

    .line 215
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_7

    return p3

    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method static synthetic getAsBoolean$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 214
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final getAsDouble(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D
    .registers 5

    .line 207
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_7

    return-wide p3

    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    const-wide/16 p3, 0x0

    .line 206
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final getAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J
    .registers 5

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_7

    return-wide p3

    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic getAsLong$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;JILjava/lang/Object;)J
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    const-wide/16 p3, 0x0

    .line 210
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final getAsObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .registers 4

    .line 226
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    if-nez p0, :cond_e

    :goto_d
    return-object p3

    :cond_e
    return-object p0
.end method

.method static synthetic getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_9

    .line 224
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 222
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private final getAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 219
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    :goto_d
    return-object p3

    :cond_e
    return-object p0
.end method

.method static synthetic getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    .line 218
    const-string p3, ""

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseToAdjustKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;
    .registers 10

    .line 90
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 91
    const-string v3, "brightness_value"

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setBrightnessValue(D)V

    .line 92
    const-string v3, "contrast_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setContrastValue(D)V

    .line 93
    const-string v3, "saturation_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setSaturationValue(D)V

    .line 94
    const-string v3, "sharpen_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setSharpenValue(D)V

    .line 95
    const-string v3, "highlight_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setHighlightValue(D)V

    .line 96
    const-string v3, "shadow_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setShadowValue(D)V

    .line 97
    const-string v3, "temperature_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setTemperatureValue(D)V

    .line 98
    const-string v3, "tone_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setToneValue(D)V

    .line 99
    const-string v3, "fade_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setFadeValue(D)V

    .line 100
    const-string v3, "light_sensation_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setLightSensationValue(D)V

    .line 101
    const-string v3, "vignetting_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setVignettingValue(D)V

    .line 102
    const-string v3, "particle_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;->setParticleValue(D)V

    return-object v0
.end method

.method private final parseToStickerKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;
    .registers 16

    .line 138
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 139
    const-string v3, "position"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 140
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 141
    const-string v9, "x"

    const-wide/16 v10, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v13}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 142
    const-string v9, "y"

    invoke-static/range {v7 .. v13}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 143
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    .line 144
    const-string v3, "scale"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object p0

    move-object p1, v2

    .line 145
    new-instance v8, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 146
    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 147
    const-string v3, "y"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 145
    invoke-virtual {v0, v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    .line 149
    const-string v3, "rotation"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setRotation(D)V

    return-object v0
.end method

.method private final parseToTextKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;
    .registers 16

    .line 107
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 108
    const-string v3, "position"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 109
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 110
    const-string v9, "x"

    const-wide/16 v10, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v13}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 111
    const-string v9, "y"

    invoke-static/range {v7 .. v13}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 112
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    .line 113
    const-string v3, "scale"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object p0

    move-object p1, v2

    .line 114
    new-instance v8, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 115
    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 116
    const-string v3, "y"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 114
    invoke-virtual {v0, v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    .line 118
    const-string v3, "rotation"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setRotation(D)V

    .line 119
    const-string v3, "border_width"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBorderWidth(D)V

    .line 120
    const-string v3, "text_alpha"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setTextAlpha(D)V

    .line 121
    const-string v3, "background_alpha"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBackgroundAlpha(D)V

    .line 122
    const-string v3, "shadow_alpha"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowAlpha(D)V

    .line 123
    const-string v3, "shadow_smoothing"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowSmoothing(D)V

    .line 124
    const-string v3, "shadow_angle"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowAngle(D)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 125
    const-string v3, "shadow_point"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object p0

    move-object p1, v2

    .line 126
    new-instance v8, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v6, 0x2

    .line 127
    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 128
    const-string v3, "y"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 126
    invoke-virtual {v0, v8}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowPoint(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 130
    const-string v3, "border_color"

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBorderColor(Ljava/lang/String;)V

    .line 131
    const-string v3, "text_color"

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setTextColor(Ljava/lang/String;)V

    .line 132
    const-string v3, "shadow_color"

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowColor(Ljava/lang/String;)V

    .line 133
    const-string v3, "background_color"

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBackgroundColor(Ljava/lang/String;)V

    return-object v0
.end method

.method private final parseToVideoKeyframe(Ljava/lang/String;JLjava/lang/String;Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;
    .registers 16

    .line 159
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p2, p3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setTimeOffset(J)V

    .line 162
    invoke-virtual {v0, p4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setType(Ljava/lang/String;)V

    const/4 p4, 0x2

    move-object v2, p5

    const/4 p5, 0x0

    .line 163
    const-string p2, "position"

    const/4 p3, 0x0

    move-object p1, v2

    invoke-static/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object v1, p0

    .line 164
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 165
    const-string v3, "x"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 166
    const-string v3, "y"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 167
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 164
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 168
    const-string v3, "scale"

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 169
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;-><init>()V

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 170
    const-string v5, "x"

    const-wide/16 v6, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 171
    const-string v5, "y"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 173
    const-string v3, "rotation"

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setRotation(D)V

    .line 174
    const-string v3, "alpha"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setAlpha(D)V

    .line 175
    const-string v3, "volume"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setVolume(D)V

    .line 176
    const-string v3, "filter_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setFilterValue(D)V

    .line 177
    const-string v3, "brightness_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setBrightnessValue(D)V

    .line 178
    const-string v3, "contrast_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setContrastValue(D)V

    .line 179
    const-string v3, "saturation_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setSaturationValue(D)V

    .line 180
    const-string v3, "sharpen_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setSharpenValue(D)V

    .line 181
    const-string v3, "highlight_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setHighlightValue(D)V

    .line 182
    const-string v3, "shadow_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setShadowValue(D)V

    .line 183
    const-string v3, "temperature_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setTemperatureValue(D)V

    .line 184
    const-string v3, "tone_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setToneValue(D)V

    .line 185
    const-string v3, "fade_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setFadeValue(D)V

    .line 186
    const-string v3, "light_sensation_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setLightSensationValue(D)V

    .line 187
    const-string v3, "vignetting_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setVignettingValue(D)V

    .line 188
    const-string v3, "particle_value"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setParticleValue(D)V

    .line 189
    const-string v3, "chroma_intensity"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setChromaIntensity(D)V

    .line 190
    const-string v3, "chroma_shadow"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setChromaShadow(D)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 191
    const-string v3, "mask_config"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsObject$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;ILjava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 192
    new-instance v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    invoke-direct {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;-><init>()V

    .line 193
    const-string v5, "width"

    const-wide/16 v6, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setWidth(D)V

    .line 194
    const-string v5, "height"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setHeight(D)V

    .line 195
    const-string v5, "centerX"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setCenterX(D)V

    .line 196
    const-string v5, "centerY"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setCenterY(D)V

    .line 197
    const-string v5, "rotation"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setRotation(D)V

    .line 198
    const-string v5, "feather"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setFeather(D)V

    .line 199
    const-string v5, "roundCorner"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setRoundCorner(D)V

    .line 200
    const-string p2, "invert"

    const/4 p3, 0x0

    move-object p0, v1

    move-object p1, v4

    invoke-static/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsBoolean$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {v2, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setInvert(Z)V

    .line 201
    const-string v5, "aspectRatio"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setAspectRatio(D)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->setMaskConfig(Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;
    .registers 11

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 70
    const-string p1, "jObject"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "id"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 71
    const-string v2, "time_offset"

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsLong$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide p1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 72
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsString$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_d4

    :goto_3c
    move-wide p2, p1

    move-object p1, p0

    goto/16 :goto_bb

    :sswitch_40
    const-string p3, "video"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_49

    goto :goto_3c

    :cond_49
    move-wide v2, p1

    move-object v5, v1

    move-object v1, p0

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->parseToVideoKeyframe(Ljava/lang/String;JLjava/lang/String;Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    move-result-object p0

    move-object p1, v1

    move-wide p2, v2

    goto/16 :goto_c5

    :sswitch_54
    move-wide p2, p1

    move-object p1, p0

    .line 72
    const-string p0, "audio"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_bb

    .line 74
    :cond_60
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "volume"

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;->setVolume(D)V

    goto :goto_c5

    :sswitch_73
    move-wide p2, p1

    move-object p1, p0

    .line 72
    const-string p0, "text"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_bb

    .line 77
    :cond_7e
    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->parseToTextKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    move-result-object p0

    goto :goto_c5

    :sswitch_83
    move-wide p2, p1

    move-object p1, p0

    .line 72
    const-string p0, "filter"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto :goto_bb

    .line 76
    :cond_8e
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "value"

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->getAsDouble$default(Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;Lcom/google/gson/JsonObject;Ljava/lang/String;DILjava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;->setValue(D)V

    goto :goto_c5

    :sswitch_a1
    move-wide p2, p1

    move-object p1, p0

    .line 72
    const-string p0, "adjust"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto :goto_bb

    .line 78
    :cond_ac
    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->parseToAdjustKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    move-result-object p0

    goto :goto_c5

    :sswitch_b1
    move-wide p2, p1

    move-object p1, p0

    .line 72
    const-string p0, "sticker"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    .line 79
    :goto_bb
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>()V

    goto :goto_c5

    .line 75
    :cond_c1
    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->parseToStickerKeyframe(Lcom/google/gson/JsonObject;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    move-result-object p0

    .line 82
    :goto_c5
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setType(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->setTimeOffset(J)V

    return-object p0

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_b1
        -0x54c6c871 -> :sswitch_a1
        -0x4bf73488 -> :sswitch_83
        0x36452d -> :sswitch_73
        0x58d9bd6 -> :sswitch_54
        0x6b0147b -> :sswitch_40
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .registers 4

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/util/KeyframeDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;

    move-result-object p0

    return-object p0
.end method
