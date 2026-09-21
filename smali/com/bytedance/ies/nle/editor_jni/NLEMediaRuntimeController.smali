.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_addMetadata(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelGetVideoFrames()I
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_cancelGetVideoFrames(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEMediaRuntimeController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J
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

.method public findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_findVEParentIdByNLESlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrDecodeImage(Ljava/lang/Object;Ljava/lang/String;II)I
    .registers 12

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getCurrDecodeImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getCurrDecodeImageSize(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 5

    .line 144
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getCurrDecodeImageSize(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object v0
.end method

.method public getDisplayImage(Ljava/lang/Object;)I
    .registers 4

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getDisplayImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getFileInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImages(Lcom/bytedance/ies/nle/editor_jni/VecLongLong;IILcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I
    .registers 18

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecLongLong;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecLongLong;)J

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;->swigValue()I

    move-result v8

    invoke-static/range {p5 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getImages(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JLcom/bytedance/ies/nle/editor_jni/VecLongLong;IIIJLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I

    move-result p0

    return p0
.end method

.method public getInitSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 4

    .line 56
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getInitSize__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object v0
.end method

.method public getInitSize(II)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 6

    .line 60
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getInitSize__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;II)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object v0
.end method

.method public getKeyFrameParam(Ljava/lang/String;J)Ljava/lang/String;
    .registers 10

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getKeyFrameParam(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getMetadata(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlayFps()F
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getPlayFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)F

    move-result p0

    return p0
.end method

.method public getPreviewFillMode()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getPreviewFillMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTrackProcessedImage(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 5

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getSingleTrackProcessedImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getUniqueKey(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 4

    .line 52
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_getVideoResolution(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(JZ)V

    return-object v0
.end method

.method public isUseFilterProcess()Z
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_isUseFilterProcess(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)Z

    move-result p0

    return p0
.end method

.method public lockSeekVideoClip(Ljava/lang/String;)I
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_lockSeekVideoClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBackgroundColor(I)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;I)V

    return-void
.end method

.method public setCanvasMinDuration(JZ)I
    .registers 10

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setCanvasMinDuration(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JZ)I

    move-result p0

    return p0
.end method

.method public setCanvasSize(II)V
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setCanvasSize(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;II)V

    return-void
.end method

.method public setDisplayPos(IIII)V
    .registers 12

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setDisplayPos(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;IIII)V

    return-void
.end method

.method public setDisplayState(FFFII)V
    .registers 14

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setDisplayState(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;FFFII)V

    return-void
.end method

.method public setEncoderListener(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;)V
    .registers 8

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setEncoderListener(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JLcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;)V

    return-void
.end method

.method public setFilterEnable(Ljava/lang/String;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 10

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setFilterEnable(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;ZZ)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public setHeightWidthRatio(F)I
    .registers 4

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setHeightWidthRatio(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;F)I

    move-result p0

    return p0
.end method

.method public setMaxWidthAndHeight(JJ)I
    .registers 12

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setMaxWidthAndHeight(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JJ)I

    move-result p0

    return p0
.end method

.method public setPlayFps(F)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setPlayFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;F)V

    return-void
.end method

.method public setPreviewFillMode(Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 4

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setPreviewFillMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;I)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public setPreviewSurfaceImage(Ljava/lang/Object;Z)I
    .registers 5

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_setPreviewSurfaceImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCMemOwn:Z

    return-void
.end method

.method public unlockSeekVideoClip()I
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaRuntimeController_unlockSeekVideoClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I

    move-result p0

    return p0
.end method
