.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    .line 15
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 9
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 20
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    .line 21
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    return-void
.end method

.method public static native getAiMattingNative(J)J
.end method

.method public static native getAlignModeNative(J)Ljava/lang/String;
.end method

.method public static native getBlendPathNative(J)Ljava/lang/String;
.end method

.method public static native getCartoonTypeNative(J)J
.end method

.method public static native getClipNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;
.end method

.method public static native getCropNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;
.end method

.method public static native getCropScaleNative(J)D
.end method

.method public static native getDurationNative(J)J
.end method

.method public static native getFramesNative(J)[Ljava/lang/String;
.end method

.method public static native getGameplayAlgorithmNative(J)Ljava/lang/String;
.end method

.method public static native getHeightNative(J)J
.end method

.method public static native getIdNative(J)Ljava/lang/String;
.end method

.method public static native getIsCartoonNative(J)Z
.end method

.method public static native getIsMutableNative(J)Z
.end method

.method public static native getIsReverseNative(J)Z
.end method

.method public static native getIsSubVideoNative(J)Z
.end method

.method public static native getMaterialIdNative(J)Ljava/lang/String;
.end method

.method public static native getOriginPathNative(J)Ljava/lang/String;
.end method

.method public static native getPathNative(J)Ljava/lang/String;
.end method

.method public static native getRelationVideoGroupNative(J)Ljava/lang/String;
.end method

.method public static native getSourceStartTimeNative(J)J
.end method

.method public static native getTargetEndTimeNative(J)J
.end method

.method public static native getTargetStartTimeNative(J)J
.end method

.method public static native getTypeNative(J)Ljava/lang/String;
.end method

.method public static native getVolumeNative(J)D
.end method

.method public static native getWidthNative(J)J
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAiMattingNative(JJ)V
.end method

.method public static native setAlignModeNative(JLjava/lang/String;)V
.end method

.method public static native setBlendPathNative(JLjava/lang/String;)V
.end method

.method public static native setCartoonTypeNative(JJ)V
.end method

.method public static native setClipNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;)V
.end method

.method public static native setCropNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)V
.end method

.method public static native setCropScaleNative(JD)V
.end method

.method public static native setDurationNative(JJ)V
.end method

.method public static native setFramesNative(J[Ljava/lang/String;)V
.end method

.method public static native setGameplayAlgorithmNative(JLjava/lang/String;)V
.end method

.method public static native setHeightNative(JJ)V
.end method

.method public static native setIdNative(JLjava/lang/String;)V
.end method

.method public static native setIsCartoonNative(JZ)V
.end method

.method public static native setIsMutableNative(JZ)V
.end method

.method public static native setIsReverseNative(JZ)V
.end method

.method public static native setIsSubVideoNative(JZ)V
.end method

.method public static native setMaterialIdNative(JLjava/lang/String;)V
.end method

.method public static native setOriginPathNative(JLjava/lang/String;)V
.end method

.method public static native setPathNative(JLjava/lang/String;)V
.end method

.method public static native setRelationVideoGroupNative(JLjava/lang/String;)V
.end method

.method public static native setSourceStartTimeNative(JJ)V
.end method

.method public static native setTargetEndTimeNative(JJ)V
.end method

.method public static native setTargetStartTimeNative(JJ)V
.end method

.method public static native setTypeNative(JLjava/lang/String;)V
.end method

.method public static native setVolumeNative(JD)V
.end method

.method public static native setWidthNative(JJ)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 35
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VideoSegment is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 25
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 26
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->released:Z

    .line 29
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAiMatting()J
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getAiMattingNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlignMode()Ljava/lang/String;
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getAlignModeNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlendPath()Ljava/lang/String;
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getBlendPathNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCartoonType()J
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCartoonTypeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;
    .registers 3

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClipNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object p0

    return-object p0
.end method

.method public getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;
    .registers 3

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCropNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object p0

    return-object p0
.end method

.method public getCropScale()D
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCropScaleNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getDurationNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrames()[Ljava/lang/String;
    .registers 3

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getFramesNative(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGameplayAlgorithm()Ljava/lang/String;
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getGameplayAlgorithmNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getHandler()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getHeightNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 181
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIdNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsCartoon()Z
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 192
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsCartoonNative(J)Z

    move-result p0

    return p0
.end method

.method public getIsMutable()Z
    .registers 3

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 203
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsMutableNative(J)Z

    move-result p0

    return p0
.end method

.method public getIsReverse()Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 214
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsReverseNative(J)Z

    move-result p0

    return p0
.end method

.method public getIsSubVideo()Z
    .registers 3

    .line 224
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 225
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsSubVideoNative(J)Z

    move-result p0

    return p0
.end method

.method public getMaterialId()Ljava/lang/String;
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 236
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getMaterialIdNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginPath()Ljava/lang/String;
    .registers 3

    .line 246
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 247
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getOriginPathNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 258
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPathNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRelationVideoGroup()Ljava/lang/String;
    .registers 3

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 269
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getRelationVideoGroupNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceStartTime()J
    .registers 3

    .line 279
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 280
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getSourceStartTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetEndTime()J
    .registers 3

    .line 302
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 303
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getTargetEndTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetStartTime()J
    .registers 3

    .line 290
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 291
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getTargetStartTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 313
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 314
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getTypeNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolume()D
    .registers 3

    .line 324
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 325
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getVolumeNative(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()J
    .registers 3

    .line 335
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 336
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getWidthNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAiMatting(J)V
    .registers 5

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setAiMattingNative(JJ)V

    return-void
.end method

.method public setAlignMode(Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setAlignModeNative(JLjava/lang/String;)V

    return-void
.end method

.method public setBlendPath(Ljava/lang/String;)V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setBlendPathNative(JLjava/lang/String;)V

    return-void
.end method

.method public setCartoonType(J)V
    .registers 5

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCartoonTypeNative(JJ)V

    return-void
.end method

.method public setClip(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;)V
    .registers 4

    .line 108
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setClipNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;)V

    return-void
.end method

.method public setCrop(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)V
    .registers 4

    .line 119
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCropNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)V

    return-void
.end method

.method public setCropScale(D)V
    .registers 5

    .line 130
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCropScaleNative(JD)V

    return-void
.end method

.method public setDuration(J)V
    .registers 5

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 142
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setDurationNative(JJ)V

    return-void
.end method

.method public setFrames([Ljava/lang/String;)V
    .registers 4

    .line 152
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 153
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setFramesNative(J[Ljava/lang/String;)V

    return-void
.end method

.method public setGameplayAlgorithm(Ljava/lang/String;)V
    .registers 4

    .line 163
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setGameplayAlgorithmNative(JLjava/lang/String;)V

    return-void
.end method

.method public setHeight(J)V
    .registers 5

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setHeightNative(JJ)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 4

    .line 185
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 186
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIdNative(JLjava/lang/String;)V

    return-void
.end method

.method public setIsCartoon(Z)V
    .registers 4

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 197
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsCartoonNative(JZ)V

    return-void
.end method

.method public setIsMutable(Z)V
    .registers 4

    .line 207
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 208
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsMutableNative(JZ)V

    return-void
.end method

.method public setIsReverse(Z)V
    .registers 4

    .line 218
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 219
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsReverseNative(JZ)V

    return-void
.end method

.method public setIsSubVideo(Z)V
    .registers 4

    .line 229
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 230
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsSubVideoNative(JZ)V

    return-void
.end method

.method public setMaterialId(Ljava/lang/String;)V
    .registers 4

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 241
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setMaterialIdNative(JLjava/lang/String;)V

    return-void
.end method

.method public setOriginPath(Ljava/lang/String;)V
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 252
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setOriginPathNative(JLjava/lang/String;)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 4

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 263
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setPathNative(JLjava/lang/String;)V

    return-void
.end method

.method public setRelationVideoGroup(Ljava/lang/String;)V
    .registers 4

    .line 273
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 274
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setRelationVideoGroupNative(JLjava/lang/String;)V

    return-void
.end method

.method public setSourceStartTime(J)V
    .registers 5

    .line 284
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 285
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setSourceStartTimeNative(JJ)V

    return-void
.end method

.method public setTargetEndTime(J)V
    .registers 5

    .line 307
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 308
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setTargetEndTimeNative(JJ)V

    return-void
.end method

.method public setTargetStartTime(J)V
    .registers 5

    .line 295
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 296
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setTargetStartTimeNative(JJ)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4

    .line 318
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 319
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setTypeNative(JLjava/lang/String;)V

    return-void
.end method

.method public setVolume(D)V
    .registers 5

    .line 329
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 330
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setVolumeNative(JD)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 340
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 341
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setWidthNative(JJ)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->ensureSurvive()V

    .line 50
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
