.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 117
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentSticker()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addStickerAnimation(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
    .registers 8

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_addStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V

    return-void
.end method

.method public clearStickerAnimation()V
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_clearStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentSticker(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->delete()V

    return-void
.end method

.method public getAlpha()F
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_getAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)F

    move-result p0

    return p0
.end method

.method public getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;
    .registers 5

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_getAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;-><init>(JZ)V

    return-object p0
.end method

.method public getEffectInfo()Ljava/lang/String;
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_getEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStringList()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 4

    .line 113
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_getInfoStringList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public getStickerAnimations()Lcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;
    .registers 4

    .line 105
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_getStickerAnimations(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEStyStickerAnim;-><init>(JZ)V

    return-object v0
.end method

.method public hasAlpha()Z
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_hasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Z

    move-result p0

    return p0
.end method

.method public hasEffectInfo()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_hasEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;)Z

    move-result p0

    return p0
.end method

.method public removeStickerAnimation(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z
    .registers 8

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_removeStickerAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)Z

    move-result p0

    return p0
.end method

.method public setAlpha(F)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_setAlpha(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;F)V

    return-void
.end method

.method public setAnimation(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V
    .registers 8

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_setAnimation(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;)V

    return-void
.end method

.method public setEffectInfo(Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_setEffectInfo(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;Ljava/lang/String;)V

    return-void
.end method

.method public setInfoStringList(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSticker_setInfoStringList(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
