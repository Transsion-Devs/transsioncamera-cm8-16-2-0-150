.class public Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
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
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    .line 17
    invoke-static {}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 11
    :cond_f
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->nativeCopyHandler(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    .line 23
    iget-wide v0, p1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->nativeCopyHandler(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    return-void
.end method

.method public static native getAlignModeNative(J)Ljava/lang/String;
.end method

.method public static native getCanvasConfigNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;
.end method

.method public static native getCreateTimeNative(J)J
.end method

.method public static native getDurationNative(J)J
.end method

.method public static native getIdNative(J)Ljava/lang/String;
.end method

.method public static native getNameNative(J)Ljava/lang/String;
.end method

.method public static native getNewVersionNative(J)Ljava/lang/String;
.end method

.method public static native getUpdateTimeNative(J)J
.end method

.method public static native getVersionNative(J)J
.end method

.method public static native getWorkspaceNative(J)Ljava/lang/String;
.end method

.method public static native listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
.end method

.method public static native listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)Ljava/lang/String;
.end method

.method static native nativeCopyHandler(J)J
.end method

.method static native nativeCreate()J
.end method

.method static native nativeRelease(J)V
.end method

.method public static native setCanvasConfigNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;)V
.end method

.method public static native setCreateTimeNative(JJ)V
.end method

.method public static native setDurationNative(JJ)V
.end method

.method public static native setIdNative(JLjava/lang/String;)V
.end method

.method public static native setNameNative(JLjava/lang/String;)V
.end method

.method public static native setNewVersionNative(JLjava/lang/String;)V
.end method

.method public static native setUpdateTimeNative(JJ)V
.end method

.method public static native setVersionNative(JJ)V
.end method

.method public static native setWorkspaceNative(JLjava/lang/String;)V
.end method


# virtual methods
.method public ensureSurvive()V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TemplateModel is dead object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 6

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    iget-wide v3, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 28
    invoke-static {v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->nativeRelease(J)V

    :cond_f
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->released:Z

    .line 31
    iput-wide v1, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native fromJson(JLjava/lang/String;)V
.end method

.method public fromJson(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->fromJson(JLjava/lang/String;)V

    return-void
.end method

.method public getAlignMode()Ljava/lang/String;
    .registers 3

    .line 160
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 161
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getAlignModeNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCanvasConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getCanvasConfigNative(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCreateTime()J
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getCreateTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getDurationNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getHandler()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getIdNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getNameNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNewVersion()Ljava/lang/String;
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getNewVersionNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateTime()J
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getUpdateTimeNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()J
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getVersionNative(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getWorkspaceNative(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCanvasConfig(Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;)V
    .registers 4

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setCanvasConfigNative(JLcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;)V

    return-void
.end method

.method public setCreateTime(J)V
    .registers 5

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setCreateTimeNative(JJ)V

    return-void
.end method

.method public setDuration(J)V
    .registers 5

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setDurationNative(JJ)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setIdNative(JLjava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setNameNative(JLjava/lang/String;)V

    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setNewVersionNative(JLjava/lang/String;)V

    return-void
.end method

.method public setUpdateTime(J)V
    .registers 5

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setUpdateTimeNative(JJ)V

    return-void
.end method

.method public setVersion(J)V
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setVersionNative(JJ)V

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .registers 4

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->setWorkspaceNative(JLjava/lang/String;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->ensureSurvive()V

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->handler:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->toJson(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method native toJson(J)Ljava/lang/String;
.end method
