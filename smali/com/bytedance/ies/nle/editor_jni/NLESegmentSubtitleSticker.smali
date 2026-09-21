.class public Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;
.super Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 146
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLESegmentSubtitleSticker()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_clone(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLESegmentSubtitleSticker(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->delete()V

    return-void
.end method

.method public getConnectedAudioSlotUUID()Ljava/lang/String;
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffectSDKFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 79
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getResource(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getSRTFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 67
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getSRTFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;
    .registers 5

    .line 91
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;-><init>(JZ)V

    return-object p0
.end method

.method public getTimeClipEnd()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeClipStart()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_getTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasConnectedAudioSlotUUID()Z
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_hasConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipEnd()Z
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_hasTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z

    move-result p0

    return p0
.end method

.method public hasTimeClipStart()Z
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_hasTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;)Z

    move-result p0

    return p0
.end method

.method public setConnectedAudioSlotUUID(Ljava/lang/String;)V
    .registers 4

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setConnectedAudioSlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectSDKFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setEffectSDKFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setSRTFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setSRTFile(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setStyle(Lcom/bytedance/ies/nle/editor_jni/NLEStyText;)V
    .registers 8

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEStyText;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setStyle(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;JLcom/bytedance/ies/nle/editor_jni/NLEStyText;)V

    return-void
.end method

.method public setTimeClipEnd(J)V
    .registers 5

    .line 115
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setTimeClipEnd(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;J)V

    return-void
.end method

.method public setTimeClipStart(J)V
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLESegmentSubtitleSticker_setTimeClipStart(JLcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSubtitleSticker;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->swigSetCMemOwn(Z)V

    return-void
.end method
