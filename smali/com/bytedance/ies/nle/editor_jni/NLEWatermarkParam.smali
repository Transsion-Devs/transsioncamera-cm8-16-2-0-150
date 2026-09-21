.class public Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEWatermarkParam()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEWatermarkParam(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->delete()V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_duration_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntities()Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_entities_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;-><init>(JZ)V

    return-object p0
.end method

.method public getExtFile()Ljava/lang/String;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_extFile_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .registers 3

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_height_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public getImages()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 5

    .line 86
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_images_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object p0
.end method

.method public getInterval()I
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_interval_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public getMask()Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;
    .registers 5

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_mask_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;-><init>(JZ)V

    return-object p0
.end method

.method public getNeedExtFile()Z
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_needExtFile_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)Z

    move-result p0

    return p0
.end method

.method public getPosition()Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;
    .registers 3

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_position_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()I
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_rotation_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public getSecondHalfImages()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 5

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_secondHalfImages_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object p0
.end method

.method public getWidth()I
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_width_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public getXOffset()I
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_xOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public getYOffset()I
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_yOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)I

    move-result p0

    return p0
.end method

.method public setDuration(J)V
    .registers 5

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_duration_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;J)V

    return-void
.end method

.method public setEntities(Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;)V
    .registers 8

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_entities_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;JLcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;)V

    return-void
.end method

.method public setExtFile(Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_extFile_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(I)V
    .registers 4

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_height_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 82
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_images_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method public setInterval(I)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_interval_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setMask(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)V
    .registers 8

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_mask_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)V

    return-void
.end method

.method public setNeedExtFile(Z)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_needExtFile_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;Z)V

    return-void
.end method

.method public setPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)V
    .registers 4

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_position_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setRotation(I)V
    .registers 4

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_rotation_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setSecondHalfImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_secondHalfImages_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method public setWidth(I)V
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_width_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setXOffset(I)V
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_xOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method public setYOffset(I)V
    .registers 4

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkParam_yOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->swigCMemOwn:Z

    return-void
.end method
