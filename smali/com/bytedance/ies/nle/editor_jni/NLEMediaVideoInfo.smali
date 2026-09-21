.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 116
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEMediaVideoInfo()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEMediaVideoInfo(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->delete()V

    return-void
.end method

.method public getBitrate()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_bitrate_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCodec()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_codec_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_duration_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFps()D
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_fps_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_height_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsImage()Z
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_isImage_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)Z

    move-result p0

    return p0
.end method

.method public getKeyFrameCount()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_keyFrameCount_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRotation()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_rotation_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_width_get(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setBitrate(J)V
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_bitrate_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setCodec(J)V
    .registers 5

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_codec_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setDuration(J)V
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_duration_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setFps(D)V
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_fps_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;D)V

    return-void
.end method

.method public setHeight(J)V
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_height_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setIsImage(Z)V
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_isImage_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;Z)V

    return-void
.end method

.method public setKeyFrameCount(J)V
    .registers 5

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_keyFrameCount_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setRotation(J)V
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_rotation_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaVideoInfo_width_set(JLcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaVideoInfo;->swigCMemOwn:Z

    return-void
.end method
