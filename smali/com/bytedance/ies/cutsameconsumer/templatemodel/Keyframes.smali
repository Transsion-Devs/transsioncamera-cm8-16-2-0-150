.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    return-void
.end method

.method public static native getAdjustsNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;
.end method

.method public static native getAudiosNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;
.end method

.method public static native getFiltersNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;
.end method

.method public static native getStickersNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;
.end method

.method public static native getTextsNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;
.end method

.method public static native getVideosNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setAdjustsNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;)V
.end method

.method public static native setAudiosNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;)V
.end method

.method public static native setFiltersNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;)V
.end method

.method public static native setStickersNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V
.end method

.method public static native setTextsNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V
.end method

.method public static native setVideosNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Keyframes is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAdjusts()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getAdjustsNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public getAudios()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getAudiosNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public getFilters()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getFiltersNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;

    move-result-object p0

    return-object p0
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    return-wide v0
.end method

.method public getStickers()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getStickersNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public getTexts()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getTextsNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public getVideos()[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->getVideosNative(J)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public setAdjusts([Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;)V
    .registers 4

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setAdjustsNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;)V

    return-void
.end method

.method public setAudios([Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;)V
    .registers 4

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setAudiosNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;)V

    return-void
.end method

.method public setFilters([Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setFiltersNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;)V

    return-void
.end method

.method public setStickers([Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setStickersNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V

    return-void
.end method

.method public setTexts([Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setTextsNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V

    return-void
.end method

.method public setVideos([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->setVideosNative(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframes;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
