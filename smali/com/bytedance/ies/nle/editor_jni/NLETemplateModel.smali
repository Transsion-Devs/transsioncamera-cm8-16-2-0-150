.class public Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;
.super Lcom/bytedance/ies/nle/editor_jni/NLEModel;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 66
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_NLETemplateModel()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    return-void
.end method

.method public static createFromDraft(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;
    .registers 5

    .line 88
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_createFromDraft(JLcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;-><init>(JZ)V

    return-object p0
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;-><init>(JZ)V

    return-object p0
.end method

.method public static featureListInTemplateModel(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/SetString;
    .registers 4

    .line 93
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SetString;

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_featureListInTemplateModel(Ljava/lang/String;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    return-wide v0
.end method

.method public static getFeatureIndex(Ljava/lang/String;)I
    .registers 1

    .line 101
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getFeatureIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSupportFeatureBits()Lcom/bytedance/ies/nle/editor_jni/VecUInt32;
    .registers 4

    .line 97
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecUInt32;

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getSupportFeatureBits()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/VecUInt32;-><init>(JZ)V

    return-object v0
.end method

.method public static restore(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;
    .registers 5

    .line 78
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_restore(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_c
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;-><init>(JZ)V

    return-object p0
.end method

.method public static restoreFromPath(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;
    .registers 5

    .line 83
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_restoreFromPath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_c
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;-><init>(JZ)V

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_clone(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public convertNLEMappingNode(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;
    .registers 8

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_convertNLEMappingNode(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_14
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_NLETemplateModel(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 44
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

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->delete()V

    return-void
.end method

.method public getAllMutableItems()Lcom/bytedance/ies/nle/editor_jni/VecNLENode;
    .registers 4

    .line 113
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLENode;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getAllMutableItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLENode;-><init>(JZ)V

    return-object v0
.end method

.method public getAllMutableTextClipsFromSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;
    .registers 9

    .line 122
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getAllMutableTextClipsFromSlot(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getMutableAssetItems()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 105
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getMutableAssetItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getMutableTextItems()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;
    .registers 4

    .line 109
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getMutableTextItems(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getTemplateCanvasSize()Lcom/bytedance/ies/nle/editor_jni/NLESize;
    .registers 4

    .line 126
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLESize;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getTemplateCanvasSize(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLESize;-><init>(JZ)V

    return-object v0
.end method

.method public getTemplateInfo()Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;
    .registers 5

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_getTemplateInfo(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;-><init>(JZ)V

    return-object p0
.end method

.method public setTemplateInfo(Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;)V
    .registers 8

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_setTemplateInfo(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)V

    return-void
.end method

.method public store()Ljava/lang/String;
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_store(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public storeToZip(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;)Ljava/lang/String;
    .registers 12

    .line 70
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_storeToZip(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEBaseTemplateZipProgressHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->swigSetCMemOwn(Z)V

    return-void
.end method

.method public updateResourcePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 130
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLETemplateModel_updateResourcePath(JLcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
