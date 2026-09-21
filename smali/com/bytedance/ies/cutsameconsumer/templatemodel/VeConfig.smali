.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    return-void
.end method

.method public static native getAutoPrepareNative(J)Z
.end method

.method public static native getVeCtrlSurfaceNative(J)Z
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAutoPrepareNative(JZ)V
.end method

.method public static native setVeCtrlSurfaceNative(JZ)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VeConfig is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAutoPrepare()Z
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->getAutoPrepareNative(J)Z

    move-result p0

    return p0
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    return-wide v0
.end method

.method public getVeCtrlSurface()Z
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->getVeCtrlSurfaceNative(J)Z

    move-result p0

    return p0
.end method

.method public setAutoPrepare(Z)V
    .registers 4

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->setAutoPrepareNative(JZ)V

    return-void
.end method

.method public setVeCtrlSurface(Z)V
    .registers 4

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->setVeCtrlSurfaceNative(JZ)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
