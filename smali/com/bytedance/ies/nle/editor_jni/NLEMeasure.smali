.class public Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEMeasure()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCPtr:J

    return-wide v0
.end method

.method public static performMeasure(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMeasure_performMeasure(JLcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEMeasure(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMeasure;->delete()V

    return-void
.end method
