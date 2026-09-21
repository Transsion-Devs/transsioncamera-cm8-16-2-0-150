.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 128
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentImage()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentImage(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 47
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

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->delete()V

    return-void
.end method

.method public getAlpha()F
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)F

    move-result p0

    return p0
.end method

.method public getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;-><init>(JZ)V

    return-object p0
.end method

.method public getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>(JZ)V

    return-object p0
.end method

.method public getCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
    .registers 5

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>(JZ)V

    return-object p0
.end method

.method public getImageFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public hasAlpha()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_hasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;)Z

    move-result p0

    return p0
.end method

.method public setAlpha(F)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_setAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;F)V

    return-void
.end method

.method public setCanvasStyle(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V
    .registers 8

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_setCanvasStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V

    return-void
.end method

.method public setClip(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
    .registers 8

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V

    return-void
.end method

.method public setCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
    .registers 8

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V

    return-void
.end method

.method public setImageFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImage_setImageFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImage;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImage;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
