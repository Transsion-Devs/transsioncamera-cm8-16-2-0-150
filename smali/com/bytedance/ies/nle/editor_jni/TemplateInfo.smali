.class public Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 139
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_TemplateInfo()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCMemOwnDerived:Z

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;
    .registers 5

    .line 47
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    return-wide v0
.end method

.method public static restore(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;
    .registers 5

    .line 147
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_restore(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_c
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;-><init>(JZ)V

    return-object p0
.end method


# virtual methods
.method public addMutableItems(Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)V
    .registers 8

    .line 123
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_addMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)V

    return-void
.end method

.method public clearMutableItems()V
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_clearMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_clone(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 36
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 37
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCMemOwnDerived:Z

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_TemplateInfo(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 41
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    .line 43
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->delete()V

    return-void
.end method

.method public getConfig()Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getConfig(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;-><init>(JZ)V

    return-object p0
.end method

.method public getCoverModel()Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;
    .registers 5

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getCoverModel(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;-><init>(JZ)V

    return-object p0
.end method

.method public getCoverRes()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 156
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getCoverRes(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMutableItemss()Lcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;
    .registers 4

    .line 135
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getMutableItemss(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;-><init>(JZ)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateId()Ljava/lang/String;
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_getTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasDesc()Z
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_hasDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z

    move-result p0

    return p0
.end method

.method public hasTag()Z
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_hasTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z

    move-result p0

    return p0
.end method

.method public hasTemplateId()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_hasTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z

    move-result p0

    return p0
.end method

.method public hasTitle()Z
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_hasTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Z

    move-result p0

    return p0
.end method

.method public removeMutableItems(Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z
    .registers 8

    .line 127
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_removeMutableItems(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEMappingNode;)Z

    move-result p0

    return p0
.end method

.method public setConfig(Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;)V
    .registers 8

    .line 114
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/TemplateConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setConfig(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/TemplateConfig;)V

    return-void
.end method

.method public setCoverModel(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V
    .registers 8

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setCoverModel(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V

    return-void
.end method

.method public setCoverRes(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V
    .registers 8

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setCoverRes(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 4

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setDesc(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 4

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setTag(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setTemplateId(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4

    .line 106
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_setTitle(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;Ljava/lang/String;)V

    return-void
.end method

.method public store()Ljava/lang/String;
    .registers 3

    .line 143
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->TemplateInfo_store(JLcom/bytedance/ies/nle/editor_jni/TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->swigCMemOwnDerived:Z

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method
