.class public Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 235
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEStyCrop()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 42
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 43
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCMemOwnDerived:Z

    .line 44
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
    .registers 5

    .line 73
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 48
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 62
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 63
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 64
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCMemOwnDerived:Z

    .line 65
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEStyCrop(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 67
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    .line 69
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 70
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

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->delete()V

    return-void
.end method

.method public getXLeft()F
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getXLeftLower()F
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getXLeftUpper()F
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getXRight()F
    .registers 3

    .line 200
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getXRightLower()F
    .registers 3

    .line 208
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getXRightUpper()F
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYLeftLower()F
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYLeftUpper()F
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYLower()F
    .registers 3

    .line 223
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYRightLower()F
    .registers 3

    .line 231
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYRightUpper()F
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public getYUpper()F
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_getYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)F

    move-result p0

    return p0
.end method

.method public hasXLeft()Z
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasXLeftLower()Z
    .registers 3

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasXRight()Z
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasXRightUpper()Z
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasYLeftLower()Z
    .registers 3

    .line 174
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasYLower()Z
    .registers 3

    .line 212
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasYRightUpper()Z
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public hasYUpper()Z
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_hasYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Z

    move-result p0

    return p0
.end method

.method public setXLeft(F)V
    .registers 4

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXLeft(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setXLeftLower(F)V
    .registers 4

    .line 163
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setXLeftUpper(F)V
    .registers 4

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setXRight(F)V
    .registers 4

    .line 193
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXRight(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setXRightLower(F)V
    .registers 4

    .line 204
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setXRightUpper(F)V
    .registers 4

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setXRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYLeftLower(F)V
    .registers 4

    .line 178
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYLeftUpper(F)V
    .registers 4

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYLower(F)V
    .registers 4

    .line 216
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYRightLower(F)V
    .registers 4

    .line 227
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYRightUpper(F)V
    .registers 4

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method public setYUpper(F)V
    .registers 4

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCrop_setYUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;F)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->swigCMemOwnDerived:Z

    .line 53
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method
