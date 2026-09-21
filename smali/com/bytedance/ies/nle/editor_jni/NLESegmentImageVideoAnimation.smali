.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 91
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentImageVideoAnimation()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 20
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;-><init>(JZ)V

    .line 21
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCMemOwnDerived:Z

    .line 22
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;
    .registers 5

    .line 51
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 26
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 40
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 41
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 42
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCMemOwnDerived:Z

    .line 43
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentImageVideoAnimation(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 45
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    .line 47
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->delete()V

    return-void
.end method

.method public getBeginScale()F
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_getBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)F

    move-result p0

    return p0
.end method

.method public getEndScale()F
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_getEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)F

    move-result p0

    return p0
.end method

.method public hasBeginScale()Z
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_hasBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)Z

    move-result p0

    return p0
.end method

.method public hasEndScale()Z
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_hasEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;)Z

    move-result p0

    return p0
.end method

.method public setBeginScale(F)V
    .registers 4

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_setBeginScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;F)V

    return-void
.end method

.method public setEndScale(F)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentImageVideoAnimation_setEndScale(JLcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;F)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageVideoAnimation;->swigCMemOwnDerived:Z

    .line 31
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;->swigSetCMemOwn(Z)V

    return-void
.end method
