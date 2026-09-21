.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 99
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_clone(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->clone()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_Config(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J
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

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->delete()V

    return-void
.end method

.method public getAppConfig()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_appConfig_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;-><init>(JZ)V

    return-object p0
.end method

.method public getCursorMaxSize()I
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_cursorMaxSize_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)I

    move-result p0

    return p0
.end method

.method public getDbPath()Ljava/lang/String;
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_dbPath_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGraph()Ljava/lang/String;
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_graph_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModelsDownloadCallback()Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;
    .registers 5

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_modelsDownloadCallback_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;-><init>(JZ)V

    return-object p0
.end method

.method public getModelsName()Ljava/lang/String;
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_modelsName_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAppConfig(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_appConfig_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)V

    return-void
.end method

.method public setCursorMaxSize(I)V
    .registers 4

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_cursorMaxSize_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;I)V

    return-void
.end method

.method public setDbPath(Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_dbPath_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V

    return-void
.end method

.method public setGraph(Ljava/lang/String;)V
    .registers 4

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_graph_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V

    return-void
.end method

.method public setModelsDownloadCallback(Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;)V
    .registers 6

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/SWIGTYPE_p_std__shared_ptrT_media__processor__VoidIntFunc_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_modelsDownloadCallback_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;J)V

    return-void
.end method

.method public setModelsName(Ljava/lang/String;)V
    .registers 4

    .line 53
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Config_modelsName_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Config;Ljava/lang/String;)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->swigCMemOwn:Z

    return-void
.end method
