.class public Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public beginInfoStickerPin(Ljava/lang/String;)I
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_beginInfoStickerPin(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelInfoStickerPin(Ljava/lang/String;)I
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_cancelInfoStickerPin(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEStickerController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J
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

.method public enableStickerAnimationPreview(Ljava/lang/String;Z)I
    .registers 5

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_enableStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->delete()V

    return-void
.end method

.method public getInfoStickerBoundingBox(Ljava/lang/String;Z)Lcom/bytedance/ies/nle/editor_jni/NLERectF;
    .registers 6

    .line 68
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLERectF;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerBoundingBox(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLERectF;-><init>(JZ)V

    return-object v0
.end method

.method public getInfoStickerPinData(Ljava/lang/String;)[B
    .registers 4

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerPinData(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerPinState(Ljava/lang/String;)I
    .registers 4

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerPinState(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInfoStickerRotate(Ljava/lang/String;)F
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerRotate(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInfoStickerScale(Ljava/lang/String;)F
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerScale(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerTemplateParams(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerVisible(Ljava/lang/String;)Z
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getInfoStickerVisible(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSrtInfoStickerInitPosition(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEPosition;
    .registers 5

    .line 72
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPosition;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getSrtInfoStickerInitPosition(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPosition;-><init>(JZ)V

    return-object v0
.end method

.method public getStickerBoundingBox(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLERectF;Z)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 14

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLERectF;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLERectF;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getStickerBoundingBox(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLERectF;Z)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public getStickerIsDynamic(Ljava/lang/String;)Z
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_getStickerIsDynamic(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInfoStickerAnimatable(Ljava/lang/String;)Z
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_isInfoStickerAnimatable(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;)I
    .registers 8

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_setInfoStickerBufferCallback(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JLcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerRestoreMode(I)I
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_setInfoStickerRestoreMode(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;I)I

    move-result p0

    return p0
.end method

.method public setInfoStickerTransform(Ljava/lang/String;FFFFF)I
    .registers 16

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_setInfoStickerTransform(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;FFFFF)I

    move-result p0

    return p0
.end method

.method public setSrtManipulateState(Ljava/lang/String;Z)I
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_setSrtManipulateState(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public startStickerAnimationPreview(JI)I
    .registers 10

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_startStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JI)I

    move-result p0

    return p0
.end method

.method public stopStickerAnimationPreview()I
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEStickerController_stopStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->swigCMemOwn:Z

    return-void
.end method
