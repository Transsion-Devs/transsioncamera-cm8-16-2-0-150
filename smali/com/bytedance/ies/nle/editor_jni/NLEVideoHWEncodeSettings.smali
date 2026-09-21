.class public Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TE_CODEC_TYPE_BYTE_VC1:I = 0x1

.field public static final TE_CODEC_TYPE_H264:I


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 132
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEVideoHWEncodeSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEVideoHWEncodeSettings(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->delete()V

    return-void
.end method

.method public getM2K_bitrate_ratio()F
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_m2K_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getM4K_bitrate_ratio()F
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_m4K_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getMBitrate()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mBitrate_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMCodecType()I
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mCodecType_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMFullHd_bitrate_ratio()F
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mFullHd_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getMGop()I
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mGop_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMH_fps_bitrate_ratio()F
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mH_fps_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getMHp_bitrate_ratio()F
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mHp_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getMProfile()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mProfile_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object p0

    return-object p0
.end method

.method public getMSd_bitrate_ratio()F
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mSd_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getTransition_bitrate_ratio()F
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_transition_bitrate_ratio_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public setM2K_bitrate_ratio(F)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_m2K_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setM4K_bitrate_ratio(F)V
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_m4K_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setMBitrate(J)V
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mBitrate_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;J)V

    return-void
.end method

.method public setMCodecType(I)V
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mCodecType_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;I)V

    return-void
.end method

.method public setMFullHd_bitrate_ratio(F)V
    .registers 4

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mFullHd_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setMGop(I)V
    .registers 4

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mGop_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;I)V

    return-void
.end method

.method public setMH_fps_bitrate_ratio(F)V
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mH_fps_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setMHp_bitrate_ratio(F)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mHp_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setMProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mProfile_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;I)V

    return-void
.end method

.method public setMSd_bitrate_ratio(F)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_mSd_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method public setTransition_bitrate_ratio(F)V
    .registers 4

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoHWEncodeSettings_transition_bitrate_ratio_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;F)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->swigCMemOwn:Z

    return-void
.end method
