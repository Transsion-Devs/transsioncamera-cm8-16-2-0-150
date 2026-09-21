.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    return-void
.end method

.method public static native getAspectRatioNative(J)D
.end method

.method public static native getCenterXNative(J)D
.end method

.method public static native getCenterYNative(J)D
.end method

.method public static native getFeatherNative(J)D
.end method

.method public static native getHeightNative(J)D
.end method

.method public static native getInvertNative(J)Z
.end method

.method public static native getRotationNative(J)D
.end method

.method public static native getRoundCornerNative(J)D
.end method

.method public static native getWidthNative(J)D
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAspectRatioNative(JD)V
.end method

.method public static native setCenterXNative(JD)V
.end method

.method public static native setCenterYNative(JD)V
.end method

.method public static native setFeatherNative(JD)V
.end method

.method public static native setHeightNative(JD)V
.end method

.method public static native setInvertNative(JZ)V
.end method

.method public static native setRotationNative(JD)V
.end method

.method public static native setRoundCornerNative(JD)V
.end method

.method public static native setWidthNative(JD)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MaskConfig is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAspectRatio()D
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getAspectRatioNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenterX()D
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getCenterXNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenterY()D
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getCenterYNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFeather()D
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getFeatherNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    return-wide v0
.end method

.method public getHeight()D
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getHeightNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInvert()Z
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getInvertNative(J)Z

    move-result p0

    return p0
.end method

.method public getRotation()D
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getRotationNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoundCorner()D
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getRoundCornerNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()D
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getWidthNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setAspectRatio(D)V
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setAspectRatioNative(JD)V

    return-void
.end method

.method public setCenterX(D)V
    .registers 5

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setCenterXNative(JD)V

    return-void
.end method

.method public setCenterY(D)V
    .registers 5

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setCenterYNative(JD)V

    return-void
.end method

.method public setFeather(D)V
    .registers 5

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setFeatherNative(JD)V

    return-void
.end method

.method public setHeight(D)V
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setHeightNative(JD)V

    return-void
.end method

.method public setInvert(Z)V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setInvertNative(JZ)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setRotationNative(JD)V

    return-void
.end method

.method public setRoundCorner(D)V
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setRoundCornerNative(JD)V

    return-void
.end method

.method public setWidth(D)V
    .registers 5

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->setWidthNative(JD)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
