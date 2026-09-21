.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEMediaSettingsController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J
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

.method public enableEffect(Z)I
    .registers 4

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_enableEffect(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)I

    move-result p0

    return p0
.end method

.method public enableHighSpeedForSingle(Z)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_enableHighSpeedForSingle(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public enableImageEditor(Z)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_enableImageEditor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public enableSimpleProcessor(Z)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_enableSimpleProcessor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setAutoPrepare(Z)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setAutoPrepare(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setDestroyVersion(Z)I
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setDestroyVersion(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)I

    move-result p0

    return p0
.end method

.method public setDldEnabled(Z)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setDldEnabled(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setDldThrVal(I)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setDldThrVal(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)V

    return-void
.end method

.method public setDleEnabled(Z)V
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setDleEnabled(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setDleEnabledPreview(Z)V
    .registers 4

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setDleEnabledPreview(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setForceDetectForFirstFrameByClip(Z)V
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setForceDetectForFirstFrameByClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setImageResizeInfo(IILcom/bytedance/ies/nle/editor_jni/NLEResFillMode;Lcom/bytedance/ies/nle/editor_jni/NLEResizeAlgorithm;)V
    .registers 12

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEResFillMode;->swigValue()I

    move-result v5

    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/NLEResizeAlgorithm;->swigValue()I

    move-result v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setImageResizeInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;IIII)V

    return-void
.end method

.method public setLoopPlay(Z)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setLoopPlay(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method public setPageMode(I)V
    .registers 4

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setPageMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)V

    return-void
.end method

.method public setPreviewFps(I)I
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setPreviewFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)I

    move-result p0

    return p0
.end method

.method public setSurfaceReDraw(Z)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSettingsController_setSurfaceReDraw(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->swigCMemOwn:Z

    return-void
.end method
