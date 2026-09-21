.class public Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public begin2DBrush()I
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_begin2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEBrushRuntimeController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J
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

.method public end2DBrush(Ljava/lang/String;)I
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_end2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->delete()V

    return-void
.end method

.method public get2DBrushStrokeCount()I
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_get2DBrushStrokeCount(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I

    move-result p0

    return p0
.end method

.method public is2DBrushEmpty()Z
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_is2DBrushEmpty(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)Z

    move-result p0

    return p0
.end method

.method public processPanEvent(FFFFF)I
    .registers 14

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_processPanEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFFFF)I

    move-result p0

    return p0
.end method

.method public processTouchDownEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
    .registers 10

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEGestureType;->swigValue()I

    move-result v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_processTouchDownEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFI)I

    move-result p0

    return p0
.end method

.method public processTouchUpEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
    .registers 10

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEGestureType;->swigValue()I

    move-result v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_processTouchUpEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFI)I

    move-result p0

    return p0
.end method

.method public set2DBrushCanvasAlpha(F)I
    .registers 4

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_set2DBrushCanvasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;F)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(I)I
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_set2DBrushColor(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;I)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_set2DBrushSize(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;F)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCMemOwn:Z

    return-void
.end method

.method public undo2DBrush()I
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEBrushRuntimeController_undo2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I

    move-result p0

    return p0
.end method
