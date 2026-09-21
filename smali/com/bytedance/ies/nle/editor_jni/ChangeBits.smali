.class public Lcom/bytedance/ies/nle/editor_jni/ChangeBits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 64
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_ChangeBits()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/ChangeBits;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clearChange()V
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_clearChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_ChangeBits(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 37
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

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->delete()V

    return-void
.end method

.method public hasChange()Z
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_hasChange__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)Z

    move-result p0

    return p0
.end method

.method public hasChange(Lcom/bytedance/ies/nle/editor_jni/ChangeBit;)Z
    .registers 4

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/ChangeBit;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_hasChange__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)Z

    move-result p0

    return p0
.end method

.method public markChange(Lcom/bytedance/ies/nle/editor_jni/ChangeBit;)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/ChangeBit;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_markChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_toString(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unmarkChange(Lcom/bytedance/ies/nle/editor_jni/ChangeBit;)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/ChangeBit;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->ChangeBits_unmarkChange(JLcom/bytedance/ies/nle/editor_jni/ChangeBits;I)V

    return-void
.end method
