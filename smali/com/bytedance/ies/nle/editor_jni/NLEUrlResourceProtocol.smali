.class public Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;
.super Lcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 6

    .line 15
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEUrlResourceProtocol(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;-><init>(JZ)V

    return-void
.end method

.method public static EXTRA_PARAM_MD5()Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_EXTRA_PARAM_MD5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static EXTRA_PARAM_SAVE_PATH()Ljava/lang/String;
    .registers 1

    .line 48
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_EXTRA_PARAM_SAVE_PATH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static KEY_URL()Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_KEY_URL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static PLATFORM_STRING()Ljava/lang/String;
    .registers 1

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_PLATFORM_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 20
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    return-wide v0
.end method

.method public static isUrlResource(Ljava/lang/String;)Z
    .registers 1

    .line 68
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_isUrlResource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 29
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 30
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 31
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEUrlResourceProtocol(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 34
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    .line 36
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceProtocol;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->delete()V

    return-void
.end method

.method public getParameters()Lcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;
    .registers 4

    .line 64
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_getParameters(JLcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/UnorderedMapStrStr;-><init>(JZ)V

    return-object v0
.end method

.method public getSourceFrom()Ljava/lang/String;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEUrlResourceProtocol_getSourceFrom(JLcom/bytedance/ies/nle/editor_jni/NLEUrlResourceProtocol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
