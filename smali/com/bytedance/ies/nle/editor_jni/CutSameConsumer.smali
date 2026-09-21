.class public Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 92
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->new_CutSameConsumer()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCMemOwn:Z

    .line 20
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCPtr:J

    return-void
.end method

.method public static addCutSame(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)I
    .registers 6

    .line 43
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/cutsameconsumer/TemplateConsumerJNIUtils;->getTemplateModelCPtr(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_addCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)I

    move-result p0

    return p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 24
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCPtr:J

    return-wide v0
.end method

.method public static getDuration(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;)J
    .registers 3

    .line 84
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_getDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRatio(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;)F
    .registers 3

    .line 80
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_CutSame__TemplateModel;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_getRatio(J)F

    move-result p0

    return p0
.end method

.method public static getTextMaterials(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;
    .registers 4

    .line 63
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_getTextMaterials(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VectorOfTextMaterial;-><init>(JZ)V

    return-object v0
.end method

.method public static getTrackSlot(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 4

    .line 75
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_getTrackSlot(JLcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_10
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>(JZ)V

    return-object v0
.end method

.method public static getVideoMaterials(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;
    .registers 4

    .line 59
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_getVideoMaterials(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VectorOfVideoMaterial;-><init>(JZ)V

    return-object v0
.end method

.method public static onlyCutSame(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)I
    .registers 3

    .line 55
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_onlyCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result p0

    return p0
.end method

.method public static removeCutSame(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)I
    .registers 3

    .line 51
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_removeCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result p0

    return p0
.end method

.method public static setTextMaterial(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/TextMaterial;)V
    .registers 8

    .line 71
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/TextMaterial;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/TextMaterial;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_setTextMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/TextMaterial;)V

    return-void
.end method

.method public static setVideoMaterial(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;)V
    .registers 8

    .line 67
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VideoMaterial;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_setVideoMaterial(JLcom/bytedance/ies/nle/editor_jni/NLEModel;JLcom/bytedance/ies/nle/editor_jni/VideoMaterial;)V

    return-void
.end method

.method public static trimCutSame(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 6

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/bytedance/ies/cutsameconsumer/TemplateConsumerJNIUtils;->getTemplateModelCPtr(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_trimCutSame(JLcom/bytedance/ies/nle/editor_jni/NLEModel;J)V

    return-void
.end method

.method public static updateRelativeSizeWhileGlobalCanvasChanged(Lcom/bytedance/ies/nle/editor_jni/NLEModel;FF)V
    .registers 5

    .line 88
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->CutSameConsumer_updateRelativeSizeWhileGlobalCanvasChanged(JLcom/bytedance/ies/nle/editor_jni/NLEModel;FF)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 33
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 34
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 35
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCMemOwn:Z

    .line 36
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/CutSameJNI;->delete_CutSameConsumer(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 38
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 40
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

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->delete()V

    return-void
.end method
