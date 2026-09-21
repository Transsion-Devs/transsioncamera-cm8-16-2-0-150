.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    .line 15
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 9
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 20
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    .line 21
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    return-void
.end method

.method public static native getAudioFilePathNative(J)Ljava/lang/String;
.end method

.method public static native getBpsNative(J)J
.end method

.method public static native getCompileJsonStrNative(J)Ljava/lang/String;
.end method

.method public static native getEncodeProfileNative(J)Ljava/lang/String;
.end method

.method public static native getFpsNative(J)J
.end method

.method public static native getGopSizeNative(J)J
.end method

.method public static native getHeightNative(J)J
.end method

.method public static native getIsAudioOnlyNative(J)Z
.end method

.method public static native getSupportHwEncoderNative(J)Z
.end method

.method public static native getWidthNative(J)J
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAudioFilePathNative(JLjava/lang/String;)V
.end method

.method public static native setBpsNative(JJ)V
.end method

.method public static native setCompileJsonStrNative(JLjava/lang/String;)V
.end method

.method public static native setEncodeProfileNative(JLjava/lang/String;)V
.end method

.method public static native setFpsNative(JJ)V
.end method

.method public static native setGopSizeNative(JJ)V
.end method

.method public static native setHeightNative(JJ)V
.end method

.method public static native setIsAudioOnlyNative(JZ)V
.end method

.method public static native setSupportHwEncoderNative(JZ)V
.end method

.method public static native setWidthNative(JJ)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 35
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VideoCompileParam is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 25
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 26
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->released:Z

    .line 29
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAudioFilePath()Ljava/lang/String;
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getAudioFilePathNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBps()J
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getBpsNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCompileJsonStr()Ljava/lang/String;
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getCompileJsonStrNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncodeProfile()Ljava/lang/String;
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getEncodeProfileNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFps()J
    .registers 3

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getFpsNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGopSize()J
    .registers 3

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getGopSizeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getHandler()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getHeightNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAudioOnly()Z
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getIsAudioOnlyNative(J)Z

    move-result p0

    return p0
.end method

.method public getSupportHwEncoder()Z
    .registers 3

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getSupportHwEncoderNative(J)Z

    move-result p0

    return p0
.end method

.method public getWidth()J
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->getWidthNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAudioFilePath(Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setAudioFilePathNative(JLjava/lang/String;)V

    return-void
.end method

.method public setBps(J)V
    .registers 5

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setBpsNative(JJ)V

    return-void
.end method

.method public setCompileJsonStr(Ljava/lang/String;)V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setCompileJsonStrNative(JLjava/lang/String;)V

    return-void
.end method

.method public setEncodeProfile(Ljava/lang/String;)V
    .registers 4

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setEncodeProfileNative(JLjava/lang/String;)V

    return-void
.end method

.method public setFps(J)V
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setFpsNative(JJ)V

    return-void
.end method

.method public setGopSize(J)V
    .registers 5

    .line 119
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setGopSizeNative(JJ)V

    return-void
.end method

.method public setHeight(J)V
    .registers 5

    .line 130
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setHeightNative(JJ)V

    return-void
.end method

.method public setIsAudioOnly(Z)V
    .registers 4

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 142
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setIsAudioOnlyNative(JZ)V

    return-void
.end method

.method public setSupportHwEncoder(Z)V
    .registers 4

    .line 152
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 153
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setSupportHwEncoderNative(JZ)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 163
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->setWidthNative(JJ)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->ensureSurvive()V

    .line 50
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
