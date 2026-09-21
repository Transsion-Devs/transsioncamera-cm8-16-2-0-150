.class public Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# static fields
.field public static final MATCH_PARENT:I = -0x2

.field public static final WRAP_CONTENT:I = -0x1


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 314
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLETimeSpaceNode()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_clone(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public collectProcessNodes(Lcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)V
    .registers 8

    .line 246
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_collectProcessNodes(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JLcom/bytedance/ies/nle/editor_jni/VecNLETimeSpaceNodeSPtr;)V

    return-void
.end method

.method public copyValueNotMappedToStage()V
    .registers 3

    .line 310
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_copyValueNotMappedToStage(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLETimeSpaceNode(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 44
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

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->delete()V

    return-void
.end method

.method public getAbsSpeed()F
    .registers 3

    .line 292
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getDuration()J
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndTime()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayer()I
    .registers 3

    .line 274
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getLayer(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)I

    move-result p0

    return p0
.end method

.method public getMeasuredEndTime()J
    .registers 3

    .line 270
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMeasuredStartTime()J
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getMeasuredStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMirror_X()Z
    .registers 3

    .line 215
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public getMirror_Y()Z
    .registers 3

    .line 227
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public getProcessor()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 4

    .line 239
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public getRelativeHeight()F
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getRelativeWidth()F
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getRewind()Z
    .registers 3

    .line 306
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getRewind(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public getRotation()F
    .registers 3

    .line 188
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getScale()F
    .registers 3

    .line 203
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getStartTime()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformX()F
    .registers 3

    .line 143
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getTransformY()F
    .registers 3

    .line 158
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)F

    move-result p0

    return p0
.end method

.method public getTransformZ()I
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_getTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)I

    move-result p0

    return p0
.end method

.method public hasEndTime()Z
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasMirror_X()Z
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasMirror_Y()Z
    .registers 3

    .line 219
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasProcessor()Z
    .registers 3

    .line 231
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasRelativeHeight()Z
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasRelativeWidth()Z
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasRotation()Z
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasScale()Z
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasSpeed()Z
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasStartTime()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasTransformX()Z
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasTransformY()Z
    .registers 3

    .line 147
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public hasTransformZ()Z
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_hasTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)Z

    move-result p0

    return p0
.end method

.method public setAbsSpeed(F)V
    .registers 4

    .line 285
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setAbsSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setDuration(J)V
    .registers 5

    .line 250
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setDuration(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V

    return-void
.end method

.method public setEndTime(J)V
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V

    return-void
.end method

.method public setLayer(I)V
    .registers 4

    .line 278
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setLayer(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;I)V

    return-void
.end method

.method public setMeasuredEndTime(J)V
    .registers 5

    .line 266
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setMeasuredEndTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V

    return-void
.end method

.method public setMeasuredStartTime(J)V
    .registers 5

    .line 258
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setMeasuredStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V

    return-void
.end method

.method public setMirror_X(Z)V
    .registers 4

    .line 211
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setMirror_X(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V

    return-void
.end method

.method public setMirror_Y(Z)V
    .registers 4

    .line 223
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setMirror_Y(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V

    return-void
.end method

.method public setProcessor(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 235
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setProcessor(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method public setRelativeHeight(F)V
    .registers 4

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setRelativeHeight(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setRelativeWidth(F)V
    .registers 4

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setRelativeWidth(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setRewind(Z)V
    .registers 4

    .line 299
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setRewind(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;Z)V

    return-void
.end method

.method public setRotation(F)V
    .registers 4

    .line 181
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setRotation(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setScale(F)V
    .registers 4

    .line 196
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setScale(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setSpeed(F)V
    .registers 4

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setSpeed(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setStartTime(J)V
    .registers 5

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setStartTime(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;J)V

    return-void
.end method

.method public setTransformX(F)V
    .registers 4

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setTransformX(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setTransformY(F)V
    .registers 4

    .line 151
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setTransformY(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;F)V

    return-void
.end method

.method public setTransformZ(I)V
    .registers 4

    .line 166
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLETimeSpaceNode_setTransformZ(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method
