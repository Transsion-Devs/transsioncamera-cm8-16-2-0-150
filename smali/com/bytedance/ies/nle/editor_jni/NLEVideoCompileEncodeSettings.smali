.class public Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEVideoCompileEncodeSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEVideoCompileEncodeSettings(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J
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

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->delete()V

    return-void
.end method

.method public getEnableHwBufferEncode()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_enableHwBufferEncode_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getIsSupportHWEncoder()Z
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_isSupportHWEncoder_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMHWEncodeSetting()Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_mHWEncodeSetting_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;-><init>(JZ)V

    return-object p0
.end method

.method public getMSWEncodeSetting()Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;
    .registers 5

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_mSWEncodeSetting_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;-><init>(JZ)V

    return-object p0
.end method

.method public getUseHWEncoder()Z
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_useHWEncoder_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public setEnableHwBufferEncode(Z)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_enableHwBufferEncode_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;Z)V

    return-void
.end method

.method public setIsSupportHWEncoder(Z)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_isSupportHWEncoder_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;Z)V

    return-void
.end method

.method public setMHWEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)V
    .registers 8

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_mHWEncodeSetting_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)V

    return-void
.end method

.method public setMSWEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)V
    .registers 8

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_mSWEncodeSetting_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)V

    return-void
.end method

.method public setUseHWEncoder(Z)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoCompileEncodeSettings_useHWEncoder_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;Z)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->swigCMemOwn:Z

    return-void
.end method
