.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegment;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 219
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentMV()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    return-wide v0
.end method

.method public static getTYPE_AUDIO()Ljava/lang/String;
    .registers 1

    .line 68
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_AUDIO_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_BGIMG()Ljava/lang/String;
    .registers 1

    .line 80
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_BGIMG_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_GIF()Ljava/lang/String;
    .registers 1

    .line 76
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_GIF_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_IMAGE()Ljava/lang/String;
    .registers 1

    .line 60
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_IMAGE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_RGBA()Ljava/lang/String;
    .registers 1

    .line 84
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_RGBA_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_TEXT()Ljava/lang/String;
    .registers 1

    .line 72
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_TEXT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTYPE_VIDEO()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_TYPE_VIDEO_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentMV(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 47
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

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->delete()V

    return-void
.end method

.method public getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;
    .registers 5

    .line 209
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>(JZ)V

    return-object p0
.end method

.method public getCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
    .registers 5

    .line 197
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>(JZ)V

    return-object p0
.end method

.method public getHeight()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 214
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getSourceFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 95
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getSourceFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getSourceFileType()Ljava/lang/String;
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeClipEnd()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeClipStart()J
    .registers 3

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVolume()F
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)F

    move-result p0

    return p0
.end method

.method public getWidth()J
    .registers 3

    .line 171
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_getWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasHeight()Z
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public hasSourceFileType()Z
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipEnd()Z
    .registers 3

    .line 145
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipStart()Z
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public hasVolume()Z
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public hasWidth()Z
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_hasWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;)Z

    move-result p0

    return p0
.end method

.method public setClip(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V
    .registers 8

    .line 202
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setClip(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V

    return-void
.end method

.method public setCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V
    .registers 8

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setCrop(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V

    return-void
.end method

.method public setHeight(J)V
    .registers 5

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setHeight(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V

    return-void
.end method

.method public setSourceFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setSourceFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setSourceFileType(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setSourceFileType(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeClipEnd(J)V
    .registers 5

    .line 149
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V

    return-void
.end method

.method public setTimeClipStart(J)V
    .registers 5

    .line 134
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 119
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setVolume(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;F)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentMV_setWidth(JLcom/bytedance/ies/nle/editor_jni/NLESegmentMV;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMV;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->swigSetCMemOwn(Z)V

    return-void
.end method
