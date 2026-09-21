.class public Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_CODE_SUCCESS:I


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEMonitor()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    return-wide v0
.end method

.method public static getKEY_NLE_EDITOR_RESTORE()Ljava/lang/String;
    .registers 1

    .line 48
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_KEY_NLE_EDITOR_RESTORE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKEY_NLE_EDITOR_STORE()Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_KEY_NLE_EDITOR_STORE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKEY_NLE_MEDIA_CONVERT()Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_KEY_NLE_MEDIA_CONVERT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKEY_NLE_MEDIA_PLAY()Ljava/lang/String;
    .registers 1

    .line 56
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_KEY_NLE_MEDIA_PLAY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKEY_NLE_MEDIA_PLAY_FPS()Ljava/lang/String;
    .registers 1

    .line 60
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_KEY_NLE_MEDIA_PLAY_FPS_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPARAM_ERROR_CODE()Ljava/lang/String;
    .registers 1

    .line 68
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_PARAM_ERROR_CODE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPARAM_ERROR_MSG()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_PARAM_ERROR_MSG_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPARAM_NLE_JSON_SIZE()Ljava/lang/String;
    .registers 1

    .line 72
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_PARAM_NLE_JSON_SIZE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPARAM_VE_API()Ljava/lang/String;
    .registers 1

    .line 76
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_PARAM_VE_API_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtain()Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;
    .registers 4

    .line 80
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_obtain()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_c
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;-><init>(JZ)V

    return-object v2
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEMonitor(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->delete()V

    return-void
.end method

.method public onEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 103
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_onEvent__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 14

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_onEvent__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public setListener(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;)V
    .registers 8

    .line 107
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEMonitor_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEMonitor;JLcom/bytedance/ies/nle/editor_jni/INLEMonitor;)V

    return-void
.end method
