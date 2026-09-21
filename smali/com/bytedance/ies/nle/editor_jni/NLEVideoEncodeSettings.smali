.class public Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEVideoEncodeSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEVideoEncodeSettings(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->delete()V

    return-void
.end method

.method public getBitrateMode()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;
    .registers 3

    .line 134
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bitrateMode_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object p0

    return-object p0
.end method

.method public getBitrateSettings()Ljava/lang/String;
    .registers 3

    .line 419
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bitrateSettings_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBps()I
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bps_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getCompileType()Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_compileType_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    move-result-object p0

    return-object p0
.end method

.method public getEnableAvInterleave()Z
    .registers 3

    .line 467
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableAvInterleave_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableByteVCRemuxVideo()Z
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableByteVCRemuxVideo_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableHwBufferEncode()Z
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableHwBufferEncode_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableInterLeave()Z
    .registers 3

    .line 278
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableInterLeave_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableRemuxVideo()Z
    .registers 3

    .line 246
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideo_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableRemuxVideoForRotation()Z
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoForRotation_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableRemuxVideoForShoot()Z
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoForShoot_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEnableRemuxVideoRes()I
    .registers 3

    .line 270
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoRes_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getEnableUploadingWhileCompile()Z
    .registers 3

    .line 427
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableUploadingWhileCompile_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getEncodeProfile()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_encodeProfile_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object p0

    return-object p0
.end method

.method public getEncodeStandard()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;
    .registers 3

    .line 198
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_encodeStandard_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    move-result-object p0

    return-object p0
.end method

.method public getEndTime()J
    .registers 3

    .line 443
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_endTime_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalSettingsJsonStr()Ljava/lang/String;
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_externalSettingsJsonStr_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFps()I
    .registers 3

    .line 174
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_fps_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getGopSize()I
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_gopSize_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getHasBFrame()Z
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_hasBFrame_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getIsAudioOnly()Z
    .registers 3

    .line 459
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_isAudioOnly_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getIsSupportHWEncoder()Z
    .registers 3

    .line 222
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_isSupportHWEncoder_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMAudioCompileEncodeSetting()Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;
    .registers 5

    .line 321
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAudioCompileEncodeSetting_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;-><init>(JZ)V

    return-object p0
.end method

.method public getMAudioOnly()Z
    .registers 3

    .line 403
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAudioOnly_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMAutoModifyResolution()Z
    .registers 3

    .line 411
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAutoModifyResolution_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMComment()Ljava/lang/String;
    .registers 3

    .line 346
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mComment_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMCompileSoftInfo()Z
    .registers 3

    .line 354
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mCompileSoftInfo_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMDescription()Ljava/lang/String;
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mDescription_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMKeyFramePoints()Lcom/bytedance/ies/nle/editor_jni/VecInt;
    .registers 5

    .line 394
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mKeyFramePoints_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecInt;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecInt;-><init>(JZ)V

    return-object p0
.end method

.method public getMOptRemuxWithCopy()Z
    .registers 3

    .line 330
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mOptRemuxWithCopy_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMReEncodeOpt()Z
    .registers 3

    .line 378
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mReEncodeOpt_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMRecordingMp4()Z
    .registers 3

    .line 362
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mRecordingMp4_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMResolutionAlign()I
    .registers 3

    .line 386
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mResolutionAlign_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getMTransitionKeyframeEnable()Z
    .registers 3

    .line 370
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mTransitionKeyframeEnable_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public getMVideoCompileEncodeSetting()Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;
    .registers 5

    .line 312
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mVideoCompileEncodeSetting_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;-><init>(JZ)V

    return-object p0
.end method

.method public getMVideoWatermarkCompileEncodeSetting()Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;
    .registers 5

    .line 303
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mVideoWatermarkCompileEncodeSetting_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;-><init>(JZ)V

    return-object p0
.end method

.method public getMWatermarkParam()Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;
    .registers 5

    .line 294
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mWatermarkParam_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;-><init>(JZ)V

    return-object p0
.end method

.method public getOutputSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 5

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_outputSize_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object p0
.end method

.method public getResizeMode()I
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeMode_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getResizeX()F
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeX_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getResizeY()F
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeY_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getRotate()I
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_rotate_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getSourceType()Lcom/bytedance/ies/nle/editor_jni/NLE_VIDEO_SOURCE_TYPE;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_sourceType_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_VIDEO_SOURCE_TYPE;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_VIDEO_SOURCE_TYPE;

    move-result-object p0

    return-object p0
.end method

.method public getSpeed()F
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_speed_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getStartOffset()J
    .registers 3

    .line 451
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_startOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 435
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_startTime_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwCRF()I
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swCRF_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getSwMaxrate()J
    .registers 3

    .line 214
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swMaxrate_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwPreset()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swPreset_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object p0

    return-object p0
.end method

.method public getSwQP()I
    .registers 3

    .line 166
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swQP_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public getSwQPOffset()F
    .registers 3

    .line 158
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swQPOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)F

    move-result p0

    return p0
.end method

.method public getWatermarkSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 5

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_watermarkSize_get(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object p0
.end method

.method public setBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)V
    .registers 4

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bitrateMode_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setBitrateSettings(Ljava/lang/String;)V
    .registers 4

    .line 415
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bitrateSettings_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setBps(I)V
    .registers 4

    .line 138
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_bps_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setCompileType(Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_compileType_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setEnableAvInterleave(Z)V
    .registers 4

    .line 463
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableAvInterleave_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableByteVCRemuxVideo(Z)V
    .registers 4

    .line 234
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableByteVCRemuxVideo_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableHwBufferEncode(Z)V
    .registers 4

    .line 226
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableHwBufferEncode_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableInterLeave(Z)V
    .registers 4

    .line 274
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableInterLeave_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableRemuxVideo(Z)V
    .registers 4

    .line 242
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideo_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableRemuxVideoForRotation(Z)V
    .registers 4

    .line 250
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoForRotation_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableRemuxVideoForShoot(Z)V
    .registers 4

    .line 258
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoForShoot_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEnableRemuxVideoRes(I)V
    .registers 4

    .line 266
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableRemuxVideoRes_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setEnableUploadingWhileCompile(Z)V
    .registers 4

    .line 423
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_enableUploadingWhileCompile_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setEncodeProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V
    .registers 4

    .line 202
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_encodeProfile_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setEncodeStandard(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;)V
    .registers 4

    .line 194
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_encodeStandard_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setEndTime(J)V
    .registers 5

    .line 439
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_endTime_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;J)V

    return-void
.end method

.method public setExternalSettingsJsonStr(Ljava/lang/String;)V
    .registers 4

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_externalSettingsJsonStr_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setFps(I)V
    .registers 4

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_fps_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setGopSize(I)V
    .registers 4

    .line 178
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_gopSize_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setHasBFrame(Z)V
    .registers 4

    .line 282
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_hasBFrame_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setIsAudioOnly(Z)V
    .registers 4

    .line 455
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_isAudioOnly_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setIsSupportHWEncoder(Z)V
    .registers 4

    .line 218
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_isSupportHWEncoder_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMAudioCompileEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;)V
    .registers 8

    .line 317
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAudioCompileEncodeSetting_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEAudioCompileEncodeSettings;)V

    return-void
.end method

.method public setMAudioOnly(Z)V
    .registers 4

    .line 399
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAudioOnly_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMAutoModifyResolution(Z)V
    .registers 4

    .line 407
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mAutoModifyResolution_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMComment(Ljava/lang/String;)V
    .registers 4

    .line 342
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mComment_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setMCompileSoftInfo(Z)V
    .registers 4

    .line 350
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mCompileSoftInfo_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMDescription(Ljava/lang/String;)V
    .registers 4

    .line 334
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mDescription_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setMKeyFramePoints(Lcom/bytedance/ies/nle/editor_jni/VecInt;)V
    .registers 8

    .line 390
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecInt;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecInt;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mKeyFramePoints_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/VecInt;)V

    return-void
.end method

.method public setMOptRemuxWithCopy(Z)V
    .registers 4

    .line 326
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mOptRemuxWithCopy_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMReEncodeOpt(Z)V
    .registers 4

    .line 374
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mReEncodeOpt_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMRecordingMp4(Z)V
    .registers 4

    .line 358
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mRecordingMp4_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMResolutionAlign(I)V
    .registers 4

    .line 382
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mResolutionAlign_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setMTransitionKeyframeEnable(Z)V
    .registers 4

    .line 366
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mTransitionKeyframeEnable_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Z)V

    return-void
.end method

.method public setMVideoCompileEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V
    .registers 8

    .line 308
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mVideoCompileEncodeSetting_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V

    return-void
.end method

.method public setMVideoWatermarkCompileEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V
    .registers 8

    .line 299
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mVideoWatermarkCompileEncodeSetting_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V

    return-void
.end method

.method public setMWatermarkParam(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)V
    .registers 8

    .line 290
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_mWatermarkParam_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)V

    return-void
.end method

.method public setOutputSize(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)V
    .registers 8

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_outputSize_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/PairIntInt;)V

    return-void
.end method

.method public setResizeMode(I)V
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeMode_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setResizeX(F)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeX_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;F)V

    return-void
.end method

.method public setResizeY(F)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_resizeY_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;F)V

    return-void
.end method

.method public setRotate(I)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_rotate_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setSourceType(Lcom/bytedance/ies/nle/editor_jni/NLE_VIDEO_SOURCE_TYPE;)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_VIDEO_SOURCE_TYPE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_sourceType_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setSpeed(F)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_speed_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;F)V

    return-void
.end method

.method public setStartOffset(J)V
    .registers 5

    .line 447
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_startOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;J)V

    return-void
.end method

.method public setStartTime(J)V
    .registers 5

    .line 431
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_startTime_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;J)V

    return-void
.end method

.method public setSwCRF(I)V
    .registers 4

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swCRF_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setSwMaxrate(J)V
    .registers 5

    .line 210
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swMaxrate_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;J)V

    return-void
.end method

.method public setSwPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)V
    .registers 4

    .line 186
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swPreset_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setSwQP(I)V
    .registers 4

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swQP_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;I)V

    return-void
.end method

.method public setSwQPOffset(F)V
    .registers 4

    .line 154
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_swQPOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;F)V

    return-void
.end method

.method public setWatermarkSize(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)V
    .registers 8

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVideoEncodeSettings_watermarkSize_set(JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/PairIntInt;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->swigCMemOwn:Z

    return-void
.end method
