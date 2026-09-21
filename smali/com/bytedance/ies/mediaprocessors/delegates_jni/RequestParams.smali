.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 128
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->new_RequestParams()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->delete_RequestParams(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->delete()V

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_body_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBodySize()J
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_bodySize_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_extra_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeadMap()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;
    .registers 5

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_headMap_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;-><init>(JZ)V

    return-object p0
.end method

.method public getHttpType()Lcom/bytedance/ies/mediaprocessors/delegates_jni/HTTP_TYPE;
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_httpType_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/HTTP_TYPE;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/delegates_jni/HTTP_TYPE;

    move-result-object p0

    return-object p0
.end method

.method public getMultiForm()Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;
    .registers 5

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_multiForm_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;-><init>(JZ)V

    return-object p0
.end method

.method public getParamDataTypeMap()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;
    .registers 5

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_paramDataTypeMap_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;-><init>(JZ)V

    return-object p0
.end method

.method public getParams()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;
    .registers 5

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_params_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;-><init>(JZ)V

    return-object p0
.end method

.method public getRequestId()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_requestId_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_url_get(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 4

    .line 103
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_body_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V

    return-void
.end method

.method public setBodySize(J)V
    .registers 5

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_bodySize_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;J)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 4

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_extra_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V

    return-void
.end method

.method public setHeadMap(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V
    .registers 8

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_headMap_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V

    return-void
.end method

.method public setHttpType(Lcom/bytedance/ies/mediaprocessors/delegates_jni/HTTP_TYPE;)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/HTTP_TYPE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_httpType_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;I)V

    return-void
.end method

.method public setMultiForm(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)V
    .registers 8

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_multiForm_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestMultiFormPartList;)V

    return-void
.end method

.method public setParamDataTypeMap(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)V
    .registers 8

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_paramDataTypeMap_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;)V

    return-void
.end method

.method public setParams(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V
    .registers 8

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_params_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrStr;)V

    return-void
.end method

.method public setRequestId(J)V
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_requestId_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;J)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->RequestParams_url_set(JLcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;Ljava/lang/String;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/RequestParams;->swigCMemOwn:Z

    return-void
.end method
