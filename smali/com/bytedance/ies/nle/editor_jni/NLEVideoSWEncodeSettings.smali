.class public Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEVideoSWEncodeSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEVideoSWEncodeSettings(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->delete()V

    return-void
.end method

.method public getMBitrateMode()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mBitrateMode_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object p0

    return-object p0
.end method

.method public getMBps()I
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mBps_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMCrf()I
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mCrf_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMGop()I
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mGop_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMMaxRate()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mMaxRate_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMPreset()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mPreset_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object p0

    return-object p0
.end method

.method public getMProfile()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mProfile_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object p0

    return-object p0
.end method

.method public getMQPOffset()D
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mQPOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setMBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)V
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mBitrateMode_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMBps(I)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mBps_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMCrf(I)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mCrf_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMGop(I)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mGop_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMMaxRate(J)V
    .registers 5

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mMaxRate_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;J)V

    return-void
.end method

.method public setMPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mPreset_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mProfile_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;I)V

    return-void
.end method

.method public setMQPOffset(D)V
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoSWEncodeSettings_mQPOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;D)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->swigCMemOwn:Z

    return-void
.end method
