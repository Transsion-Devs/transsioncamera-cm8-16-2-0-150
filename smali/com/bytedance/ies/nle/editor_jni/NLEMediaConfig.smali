.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 126
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEMediaConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEMediaConfig(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 41
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method public getDefaultFontPath()Ljava/lang/String;
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_defaultFontPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnableClipVolumeFilterOptimize()Z
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableClipVolumeFilterOptimize_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Z

    move-result p0

    return p0
.end method

.method public getEnableCoexistGlobalEffect()Z
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableCoexistGlobalEffect_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Z

    move-result p0

    return p0
.end method

.method public getEnableLogExecutor()Z
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableLogExecutor_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Z

    move-result p0

    return p0
.end method

.method public getMediaLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_mediaLogLevel_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object p0

    return-object p0
.end method

.method public getModelPath()Ljava/lang/String;
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_modelPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNleMediaAbConfig()Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;
    .registers 5

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_nleMediaAbConfig_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;-><init>(JZ)V

    return-object p0
.end method

.method public getNleVEUserConfig()Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;
    .registers 5

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_nleVEUserConfig_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;-><init>(JZ)V

    return-object p0
.end method

.method public getReUseFirstAVInfo()Z
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_reUseFirstAVInfo_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Z

    move-result p0

    return p0
.end method

.method public getWorkSpace()Ljava/lang/String;
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_workSpace_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultFontPath(Ljava/lang/String;)V
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_defaultFontPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setEnableClipVolumeFilterOptimize(Z)V
    .registers 4

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableClipVolumeFilterOptimize_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Z)V

    return-void
.end method

.method public setEnableCoexistGlobalEffect(Z)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableCoexistGlobalEffect_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Z)V

    return-void
.end method

.method public setEnableLogExecutor(Z)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_enableLogExecutor_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Z)V

    return-void
.end method

.method public setMediaLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_mediaLogLevel_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;I)V

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_modelPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setNleMediaAbConfig(Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;)V
    .registers 8

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_nleMediaAbConfig_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;JLcom/bytedance/ies/nle/editor_jni/NLEMediaABConfig;)V

    return-void
.end method

.method public setNleVEUserConfig(Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;)V
    .registers 8

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_nleVEUserConfig_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;)V

    return-void
.end method

.method public setReUseFirstAVInfo(Z)V
    .registers 4

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_reUseFirstAVInfo_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Z)V

    return-void
.end method

.method public setWorkSpace(Ljava/lang/String;)V
    .registers 4

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaConfig_workSpace_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Ljava/lang/String;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->swigCMemOwn:Z

    return-void
.end method
