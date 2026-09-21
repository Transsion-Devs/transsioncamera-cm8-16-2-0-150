.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;
.super Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;
.source "SourceFile"


# instance fields
.field handler:J

.field released:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(J)V

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    .line 19
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(J)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 12
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 26
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    .line 27
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    return-void
.end method

.method public static native getBackgroundAlphaNative(J)D
.end method

.method public static native getBackgroundColorNative(J)Ljava/lang/String;
.end method

.method public static native getBorderColorNative(J)Ljava/lang/String;
.end method

.method public static native getBorderWidthNative(J)D
.end method

.method public static native getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getRotationNative(J)D
.end method

.method public static native getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getShadowAlphaNative(J)D
.end method

.method public static native getShadowAngleNative(J)D
.end method

.method public static native getShadowColorNative(J)Ljava/lang/String;
.end method

.method public static native getShadowPointNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getShadowSmoothingNative(J)D
.end method

.method public static native getTextAlphaNative(J)D
.end method

.method public static native getTextColorNative(J)Ljava/lang/String;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setBackgroundAlphaNative(JD)V
.end method

.method public static native setBackgroundColorNative(JLjava/lang/String;)V
.end method

.method public static native setBorderColorNative(JLjava/lang/String;)V
.end method

.method public static native setBorderWidthNative(JD)V
.end method

.method public static native setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setRotationNative(JD)V
.end method

.method public static native setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setShadowAlphaNative(JD)V
.end method

.method public static native setShadowAngleNative(JD)V
.end method

.method public static native setShadowColorNative(JLjava/lang/String;)V
.end method

.method public static native setShadowPointNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setShadowSmoothingNative(JD)V
.end method

.method public static native setTextAlphaNative(JD)V
.end method

.method public static native setTextColorNative(JLjava/lang/String;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 40
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 41
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TextKeyframe is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 31
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 32
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->released:Z

    .line 35
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    .line 36
    invoke-super {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 51
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getBackgroundAlpha()D
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBackgroundAlphaNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBackgroundColorNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBorderColor()Ljava/lang/String;
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBorderColorNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBorderWidth()D
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBorderWidthNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method getHandler()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    return-wide v0
.end method

.method public getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()D
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getRotationNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getShadowAlpha()D
    .registers 3

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 143
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowAlphaNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowAngle()D
    .registers 3

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 154
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowAngleNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowColor()Ljava/lang/String;
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 165
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowColorNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShadowPoint()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowPointNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getShadowSmoothing()D
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 187
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowSmoothingNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextAlpha()D
    .registers 3

    .line 197
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 198
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextAlphaNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextColor()Ljava/lang/String;
    .registers 3

    .line 208
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 209
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextColorNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundAlpha(D)V
    .registers 5

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBackgroundAlphaNative(JD)V

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 4

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBackgroundColorNative(JLjava/lang/String;)V

    return-void
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBorderColorNative(JLjava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(D)V
    .registers 5

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setBorderWidthNative(JD)V

    return-void
.end method

.method public setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    .line 125
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setRotationNative(JD)V

    return-void
.end method

.method public setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setShadowAlpha(D)V
    .registers 5

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowAlphaNative(JD)V

    return-void
.end method

.method public setShadowAngle(D)V
    .registers 5

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowAngleNative(JD)V

    return-void
.end method

.method public setShadowColor(Ljava/lang/String;)V
    .registers 4

    .line 169
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowColorNative(JLjava/lang/String;)V

    return-void
.end method

.method public setShadowPoint(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 181
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowPointNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setShadowSmoothing(D)V
    .registers 5

    .line 191
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 192
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setShadowSmoothingNative(JD)V

    return-void
.end method

.method public setTextAlpha(D)V
    .registers 5

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 203
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setTextAlphaNative(JD)V

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .registers 4

    .line 213
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 214
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->setTextColorNative(JLjava/lang/String;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->ensureSurvive()V

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
