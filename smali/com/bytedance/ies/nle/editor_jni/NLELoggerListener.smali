.class public Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;
.super Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 70
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLELoggerListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;-><init>(JZ)V

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLELoggerListener(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->delete()V

    return-void
.end method

.method public onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V
    .registers 5

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_onLog__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;)V

    return-void
.end method

.method public onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;)V
    .registers 11

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    if-ne v0, v1, :cond_18

    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigValue()I

    move-result v3

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;)J

    move-result-wide v5

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_onLog__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;J)V

    return-void

    :cond_18
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->swigValue()I

    move-result v3

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_va_list;)J

    move-result-wide v5

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_onLogSwigExplicitNLELoggerListener__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLELoggerListener;ILjava/lang/String;J)V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigSetCMemOwn(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigSetCMemOwn(Z)V

    .line 53
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;JZ)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigSetCMemOwn(Z)V

    .line 58
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLELoggerListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;JZ)V

    return-void
.end method
