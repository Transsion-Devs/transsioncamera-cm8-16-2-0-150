.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_ImageBuffer__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/math/BigInteger;)V
    .registers 5

    .line 48
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_ImageBuffer__SWIG_1(IILjava/lang/String;Ljava/math/BigInteger;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_ImageBuffer(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->delete()V

    return-void
.end method

.method public getFormat()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_format_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_height_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I

    move-result p0

    return p0
.end method

.method public getLength()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_length_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRotateMode()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AERotateMode;
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_rotateMode_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AERotateMode;->swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AERotateMode;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_width_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)I

    move-result p0

    return p0
.end method

.method public recycle()V
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_recycle(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    return-void
.end method

.method public setData([B)V
    .registers 4

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_setData(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;[B)V

    return-void
.end method

.method public setFormat(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;)V
    .registers 4

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_format_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V

    return-void
.end method

.method public setHeight(I)V
    .registers 4

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_height_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V

    return-void
.end method

.method public setLength(J)V
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_length_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;J)V

    return-void
.end method

.method public setRotateMode(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AERotateMode;)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AERotateMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_rotateMode_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V

    return-void
.end method

.method public setWidth(I)V
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->ImageBuffer_width_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;I)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->swigCMemOwn:Z

    return-void
.end method
