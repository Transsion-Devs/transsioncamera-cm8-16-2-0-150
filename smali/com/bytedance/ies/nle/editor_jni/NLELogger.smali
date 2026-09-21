.class public Lcom/bytedance/ies/nle/editor_jni/NLELogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 95
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLELogger()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLELogger;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    return-wide v0
.end method

.method public static obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_obtain()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_c
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;-><init>(JZ)V

    return-object v2
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4

    .line 63
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_d(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLELogger(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J
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

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_e(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->delete()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    .line 70
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_i(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V
    .registers 8

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_setDelegate(JLcom/bytedance/ies/nle/editor_jni/NLELogger;JLcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V

    return-void
.end method

.method public setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V
    .registers 4

    .line 49
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_setLogLevel(JLcom/bytedance/ies/nle/editor_jni/NLELogger;I)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_v(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_w(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method

.method public wtf(Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELogger_wtf(JLcom/bytedance/ies/nle/editor_jni/NLELogger;Ljava/lang/String;)V

    return-void
.end method
