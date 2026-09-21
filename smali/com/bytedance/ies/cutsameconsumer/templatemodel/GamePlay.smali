.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    .line 15
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 9
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 20
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    .line 21
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    return-void
.end method

.method public static native getAlgorithmNative(J)Ljava/lang/String;
.end method

.method public static native getPathNative(J)Ljava/lang/String;
.end method

.method public static native getReshapeNative(J)Z
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAlgorithmNative(JLjava/lang/String;)V
.end method

.method public static native setPathNative(JLjava/lang/String;)V
.end method

.method public static native setReshapeNative(JZ)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 35
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GamePlay is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 25
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 26
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->released:Z

    .line 29
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->getAlgorithmNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getHandler()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->getPathNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReshape()Z
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->getReshapeNative(J)Z

    move-result p0

    return p0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->setAlgorithmNative(JLjava/lang/String;)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->setPathNative(JLjava/lang/String;)V

    return-void
.end method

.method public setReshape(Z)V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->setReshapeNative(JZ)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->ensureSurvive()V

    .line 50
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/GamePlay;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
