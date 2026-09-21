.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field handler:J

.field released:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    return-void
.end method

.method public static native getAlphaNative(J)D
.end method

.method public static native getFlipNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;
.end method

.method public static native getRotationNative(J)D
.end method

.method public static native getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native getTransformNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAlphaNative(JD)V
.end method

.method public static native setFlipNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;)V
.end method

.method public static native setRotationNative(JD)V
.end method

.method public static native setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method

.method public static native setTransformNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Clip is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAlpha()D
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getAlphaNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getFlipNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;

    move-result-object p0

    return-object p0
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    return-wide v0
.end method

.method public getRotation()D
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getRotationNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getScaleNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public getTransform()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getTransformNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object p0

    return-object p0
.end method

.method public setAlpha(D)V
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setAlphaNative(JD)V

    return-void
.end method

.method public setFlip(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;)V
    .registers 4

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setFlipNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Flip;)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setRotationNative(JD)V

    return-void
.end method

.method public setScale(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setScaleNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public setTransform(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setTransformNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Point;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
