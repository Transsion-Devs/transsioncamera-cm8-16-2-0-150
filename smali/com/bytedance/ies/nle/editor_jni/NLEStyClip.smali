.class public Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 83
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEStyClip()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 42
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 43
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCMemOwnDerived:Z

    .line 44
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;
    .registers 5

    .line 73
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 48
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 78
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_clone(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 62
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 63
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 64
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCMemOwnDerived:Z

    .line 65
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEStyClip(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 67
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->delete()V

    return-void
.end method

.method public getLeftLower()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_getLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p0
.end method

.method public getLeftUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_getLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p0
.end method

.method public getRightLower()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 5

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_getRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p0
.end method

.method public getRightUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;
    .registers 5

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_getRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>(JZ)V

    return-object p0
.end method

.method public setLeftLower(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_setLeftLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method public setLeftUpper(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_setLeftUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method public setRightLower(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_setRightLower(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method public setRightUpper(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V
    .registers 8

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_setRightUpper(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;JLcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCMemOwnDerived:Z

    .line 53
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public toCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
    .registers 5

    .line 138
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEStyClip_toCrop(JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>(JZ)V

    return-object p0
.end method
