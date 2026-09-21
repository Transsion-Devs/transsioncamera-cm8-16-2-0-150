.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    return-void
.end method

.method public static native getMaterialIdNative(J)Ljava/lang/String;
.end method

.method public static native getTargetStartTimeNative(J)J
.end method

.method public static native getTextNative(J)Ljava/lang/String;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setMaterialIdNative(JLjava/lang/String;)V
.end method

.method public static native setTargetStartTimeNative(JJ)V
.end method

.method public static native setTextNative(JLjava/lang/String;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TailSegment is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    return-wide v0
.end method

.method public getMaterialId()Ljava/lang/String;
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->getMaterialIdNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetStartTime()J
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->getTargetStartTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->getTextNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setMaterialId(Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->setMaterialIdNative(JLjava/lang/String;)V

    return-void
.end method

.method public setTargetStartTime(J)V
    .registers 5

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->setTargetStartTimeNative(JJ)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->setTextNative(JLjava/lang/String;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
