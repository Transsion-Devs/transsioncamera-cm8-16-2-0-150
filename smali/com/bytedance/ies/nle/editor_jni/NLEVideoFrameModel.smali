.class public Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;
.super Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEVideoFrameModel()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 20
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    .line 21
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCMemOwnDerived:Z

    .line 22
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;
    .registers 5

    .line 58
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 26
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 8

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_addTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method public clearTrack()V
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_clearTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 63
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 40
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 41
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 42
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCMemOwnDerived:Z

    .line 43
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEVideoFrameModel(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 45
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    .line 47
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 48
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->delete()V

    return-void
.end method

.method public getCanvasRatio()F
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_getCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)F

    move-result p0

    return p0
.end method

.method public getCoverMaterial()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;
    .registers 5

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_getCoverMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;-><init>(JZ)V

    return-object p0
.end method

.method public getSnapshot()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_getSnapshot(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;
    .registers 4

    .line 122
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_getTracks(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoFrameTime()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_getVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanvasRatio()Z
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_hasCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)Z

    move-result p0

    return p0
.end method

.method public hasVideoFrameTime()Z
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_hasVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)Z

    move-result p0

    return p0
.end method

.method public removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
    .registers 8

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_removeTrack(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result p0

    return p0
.end method

.method public setCanvasRatio(F)V
    .registers 4

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_setCanvasRatio(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;F)V

    return-void
.end method

.method public setCoverMaterial(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V
    .registers 8

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_setCoverMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V

    return-void
.end method

.method public setSnapshot(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_setSnapshot(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setVideoFrameTime(J)V
    .registers 5

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEVideoFrameModel_setVideoFrameTime(JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->swigCMemOwnDerived:Z

    .line 31
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigSetCMemOwn(Z)V

    return-void
.end method
