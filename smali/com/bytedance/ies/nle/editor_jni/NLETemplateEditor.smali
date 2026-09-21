.class public Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;
.super Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_NLETemplateEditor()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 6

    .line 15
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateEditor_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 20
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 29
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 30
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 31
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_NLETemplateEditor(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 34
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;->swigCPtr:J

    .line 36
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 37
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

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateEditor;->delete()V

    return-void
.end method
