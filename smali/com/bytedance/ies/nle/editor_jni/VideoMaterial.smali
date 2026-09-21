.class public Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->new_VideoMaterial()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->delete_VideoMaterial(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->delete()V

    return-void
.end method

.method public getAlignMode()Ljava/lang/String;
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getAlignMode(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCartoonType()I
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCartoonType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I

    move-result p0

    return p0
.end method

.method public getCropScale()F
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCropScale(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F

    move-result p0

    return p0
.end method

.method public getCropXLeft()F
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCropXLeft(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F

    move-result p0

    return p0
.end method

.method public getCropXRight()F
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCropXRight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F

    move-result p0

    return p0
.end method

.method public getCropYLower()F
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCropYLower(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F

    move-result p0

    return p0
.end method

.method public getCropYUpper()F
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getCropYUpper(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)F

    move-result p0

    return p0
.end method

.method public getDuration()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getHeight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I

    move-result p0

    return p0
.end method

.method public getIsMutable()Z
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getIsMutable(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z

    move-result p0

    return p0
.end method

.method public getIsReverse()Z
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getIsReverse(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z

    move-result p0

    return p0
.end method

.method public getIsSubVideo()Z
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getIsSubVideo(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Z

    move-result p0

    return p0
.end method

.method public getMaterialId()Ljava/lang/String;
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getMaterialId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNLESlotId()Ljava/lang/String;
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getNLESlotId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getPath(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceDuration()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getSourceDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceStartTime()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getSourceStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetStartTime()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_getWidth(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)I

    move-result p0

    return p0
.end method

.method public setAlignMode(Ljava/lang/String;)V
    .registers 4

    .line 192
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setAlignMode(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V

    return-void
.end method

.method public setCartoonType(I)V
    .registers 4

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCartoonType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V

    return-void
.end method

.method public setCropScale(F)V
    .registers 4

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCropScale(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V

    return-void
.end method

.method public setCropXLeft(F)V
    .registers 4

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCropXLeft(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V

    return-void
.end method

.method public setCropXRight(F)V
    .registers 4

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCropXRight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V

    return-void
.end method

.method public setCropYLower(F)V
    .registers 4

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCropYLower(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V

    return-void
.end method

.method public setCropYUpper(F)V
    .registers 4

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setCropYUpper(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;F)V

    return-void
.end method

.method public setDuration(J)V
    .registers 5

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V

    return-void
.end method

.method public setHeight(I)V
    .registers 4

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setHeight(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V

    return-void
.end method

.method public setIsMutable(Z)V
    .registers 4

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setIsMutable(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V

    return-void
.end method

.method public setIsReverse(Z)V
    .registers 4

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setIsReverse(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V

    return-void
.end method

.method public setIsSubVideo(Z)V
    .registers 4

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setIsSubVideo(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Z)V

    return-void
.end method

.method public setMaterialId(Ljava/lang/String;)V
    .registers 4

    .line 184
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setMaterialId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V

    return-void
.end method

.method public setNLESlotId(Ljava/lang/String;)V
    .registers 4

    .line 188
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setNLESlotId(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 4

    .line 196
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setPath(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceDuration(J)V
    .registers 5

    .line 180
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setSourceDuration(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V

    return-void
.end method

.method public setSourceStartTime(J)V
    .registers 5

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setSourceStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V

    return-void
.end method

.method public setTargetStartTime(J)V
    .registers 5

    .line 172
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setTargetStartTime(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;J)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 4

    .line 200
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setType(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(I)V
    .registers 4

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->VideoMaterial_setWidth(JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;I)V

    return-void
.end method
