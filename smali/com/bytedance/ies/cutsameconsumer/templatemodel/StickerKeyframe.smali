.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    .line 19
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->nativeCopyHandler(J)J

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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 12
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;-><init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 26
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    .line 27
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    return-void
.end method

.method public static native getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getRotationNative(J)D
.end method

.method public static native getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setRotationNative(JD)V
.end method

.method public static native setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 40
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 41
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StickerKeyframe is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 31
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 32
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->released:Z

    .line 35
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    .line 36
    invoke-super {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 51
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method getHandler()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    return-wide v0
.end method

.method public getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getPositionNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()D
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getRotationNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public setPosition(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setPositionNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setRotationNative(JD)V

    return-void
.end method

.method public setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->ensureSurvive()V

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
