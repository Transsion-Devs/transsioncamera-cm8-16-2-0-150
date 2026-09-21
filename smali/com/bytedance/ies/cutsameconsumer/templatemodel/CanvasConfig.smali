.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field handler:J

.field released:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    .line 15
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 9
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 20
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    .line 21
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    return-void
.end method

.method public static native getHeightNative(J)J
.end method

.method public static native getRatioNative(J)Ljava/lang/String;
.end method

.method public static native getWidthNative(J)J
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setHeightNative(JJ)V
.end method

.method public static native setRatioNative(JLjava/lang/String;)V
.end method

.method public static native setWidthNative(JJ)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 35
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CanvasConfig is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 25
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 26
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->released:Z

    .line 29
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method getHandler()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->getHeightNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRatio()Ljava/lang/String;
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->getRatioNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()J
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->getWidthNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setHeight(J)V
    .registers 5

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->setHeightNative(JJ)V

    return-void
.end method

.method public setRatio(Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->setRatioNative(JLjava/lang/String;)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->setWidthNative(JJ)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->ensureSurvive()V

    .line 50
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
