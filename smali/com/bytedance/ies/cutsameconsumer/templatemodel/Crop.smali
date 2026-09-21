.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    return-void
.end method

.method public static native getLowerLeftXNative(J)D
.end method

.method public static native getLowerLeftYNative(J)D
.end method

.method public static native getLowerRightXNative(J)D
.end method

.method public static native getLowerRightYNative(J)D
.end method

.method public static native getUpperLeftXNative(J)D
.end method

.method public static native getUpperLeftYNative(J)D
.end method

.method public static native getUpperRightXNative(J)D
.end method

.method public static native getUpperRightYNative(J)D
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setLowerLeftXNative(JD)V
.end method

.method public static native setLowerLeftYNative(JD)V
.end method

.method public static native setLowerRightXNative(JD)V
.end method

.method public static native setLowerRightYNative(JD)V
.end method

.method public static native setUpperLeftXNative(JD)V
.end method

.method public static native setUpperLeftYNative(JD)V
.end method

.method public static native setUpperRightXNative(JD)V
.end method

.method public static native setUpperRightYNative(JD)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Crop is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    return-wide v0
.end method

.method public getLowerLeftX()D
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerLeftXNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLowerLeftY()D
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerLeftYNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLowerRightX()D
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightXNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLowerRightY()D
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightYNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUpperLeftX()D
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftXNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUpperLeftY()D
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftYNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUpperRightX()D
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperRightXNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUpperRightY()D
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperRightYNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setLowerLeftX(D)V
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftXNative(JD)V

    return-void
.end method

.method public setLowerLeftY(D)V
    .registers 5

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftYNative(JD)V

    return-void
.end method

.method public setLowerRightX(D)V
    .registers 5

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightXNative(JD)V

    return-void
.end method

.method public setLowerRightY(D)V
    .registers 5

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightYNative(JD)V

    return-void
.end method

.method public setUpperLeftX(D)V
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftXNative(JD)V

    return-void
.end method

.method public setUpperLeftY(D)V
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftYNative(JD)V

    return-void
.end method

.method public setUpperRightX(D)V
    .registers 5

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightXNative(JD)V

    return-void
.end method

.method public setUpperRightY(D)V
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightYNative(JD)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
