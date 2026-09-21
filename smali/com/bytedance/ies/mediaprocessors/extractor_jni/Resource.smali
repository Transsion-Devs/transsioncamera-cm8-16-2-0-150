.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Resource__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Resource__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V
    .registers 6

    .line 52
    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_Resource__SWIG_2(Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_Resource(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->delete()V

    return-void
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_assetId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAssetPath()Ljava/lang/String;
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_assetPath_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuffer()Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_buffer_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>(JZ)V

    return-object p0
.end method

.method public isInvalidResource()Z
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_isInvalidResource(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z

    move-result p0

    return p0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_assetId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public setAssetPath(Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_assetPath_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public setBuffer(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V
    .registers 8

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->Resource_buffer_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->swigCMemOwn:Z

    return-void
.end method
