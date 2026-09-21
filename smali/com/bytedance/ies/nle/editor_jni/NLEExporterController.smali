.class public Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public cancelCompile()I
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_cancelCompile(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;)I

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 10

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_compile__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z
    .registers 14

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_compile__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 12

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_compile__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z
    .registers 16

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v5

    invoke-static {p4}, Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_compile__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEExporterController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 41
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

.method public getRemuxErrorCode(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I
    .registers 8

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_getRemuxErrorCode(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public isEnableRemuxVideo(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 8

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_isEnableRemuxVideo(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public isWatermarkCompileEncode()I
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEExporterController_isWatermarkCompileEncode(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->swigCMemOwn:Z

    return-void
.end method
