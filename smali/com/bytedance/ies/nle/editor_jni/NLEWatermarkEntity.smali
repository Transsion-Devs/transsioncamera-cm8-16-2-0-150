.class public Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEWatermarkEntity()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEWatermarkEntity(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->delete()V

    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_height_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public getImages()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_images_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object p0
.end method

.method public getInterval()I
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_interval_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public getPosition()Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_position_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()I
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_rotation_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public getSequenceIn()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_sequenceIn_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequenceOut()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_sequenceOut_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_width_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public getXOffset()I
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_xOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public getYOffset()I
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_yOffset_get(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)I

    move-result p0

    return p0
.end method

.method public setHeight(I)V
    .registers 4

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_height_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V
    .registers 8

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_images_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;JLcom/bytedance/ies/nle/editor_jni/VecString;)V

    return-void
.end method

.method public setInterval(I)V
    .registers 4

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_interval_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)V
    .registers 4

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_position_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setRotation(I)V
    .registers 4

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_rotation_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setSequenceIn(J)V
    .registers 5

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_sequenceIn_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;J)V

    return-void
.end method

.method public setSequenceOut(J)V
    .registers 5

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_sequenceOut_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;J)V

    return-void
.end method

.method public setWidth(I)V
    .registers 4

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_width_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setXOffset(I)V
    .registers 4

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_xOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method public setYOffset(I)V
    .registers 4

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEWatermarkEntity_yOffset_set(JLcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->swigCMemOwn:Z

    return-void
.end method
