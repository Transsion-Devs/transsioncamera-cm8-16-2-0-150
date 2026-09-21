.class public Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 183
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEStyCanvas()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEStyCanvas(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->delete()V

    return-void
.end method

.method public getAntialiasing()Z
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public getBlurRadius()F
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)F

    move-result p0

    return p0
.end method

.method public getBorderColor()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBorderWidth()J
    .registers 3

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColor()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndColor()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getImage()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getImage(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getStartColor()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_getType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;

    move-result-object p0

    return-object p0
.end method

.method public hasAntialiasing()Z
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasBlurRadius()Z
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasBorderColor()Z
    .registers 3

    .line 159
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasBorderWidth()Z
    .registers 3

    .line 171
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasColor()Z
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasEndColor()Z
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasStartColor()Z
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public hasType()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_hasType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)Z

    move-result p0

    return p0
.end method

.method public setAntialiasing(Z)V
    .registers 4

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setAntialiasing(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;Z)V

    return-void
.end method

.method public setBlurRadius(F)V
    .registers 4

    .line 103
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setBlurRadius(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;F)V

    return-void
.end method

.method public setBorderColor(J)V
    .registers 5

    .line 163
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setBorderColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V

    return-void
.end method

.method public setBorderWidth(J)V
    .registers 5

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setBorderWidth(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V

    return-void
.end method

.method public setColor(J)V
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V

    return-void
.end method

.method public setEndColor(J)V
    .registers 5

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setEndColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V

    return-void
.end method

.method public setImage(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setImage(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setStartColor(J)V
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setStartColor(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;J)V

    return-void
.end method

.method public setType(Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyCanvas_setType(JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method
