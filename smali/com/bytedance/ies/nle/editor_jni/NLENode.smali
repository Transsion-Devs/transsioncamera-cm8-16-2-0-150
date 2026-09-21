.class public Lcom/bytedance/ies/nle/editor_jni/NLENode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addListener(Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)V
    .registers 8

    .line 205
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_addListener(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLEChangeListener;)V

    return-void
.end method

.method public addToStage(J)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 184
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_addToStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_e
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p2
.end method

.method public addToWorking(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Z
    .registers 8

    .line 189
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_addToWorking(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public clearExtra()V
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_clearExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method public clearListener()V
    .registers 3

    .line 209
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_clearListener(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method public clearTransientExtra()V
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_clearTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method public clearWorkingDirty()V
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_clearWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_clone(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public cloneToNode(Lcom/bytedance/ies/nle/editor_jni/NLENode;Z)V
    .registers 10

    .line 180
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_cloneToNode(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)V

    return-void
.end method

.method public collectResources(Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V
    .registers 8

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_collectResources(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;)V

    return-void
.end method

.method public copyValueNotMappedToStage()V
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_copyValueNotMappedToStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method public deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 170
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_deepClone__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public deepClone(Z)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 4

    .line 175
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_deepClone__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLENode(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J
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

.method public equals(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Z
    .registers 8

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_equals(JLcom/bytedance/ies/nle/editor_jni/NLENode;JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_19

    .line 49
    :cond_12
    :try_start_12
    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    .line 50
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->equals(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_19

    return p0

    :catch_19
    :cond_19
    :goto_19
    return v0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V

    return-void
.end method

.method public getClassType()Lcom/bytedance/ies/nle/editor_jni/NLEClassType;
    .registers 3

    .line 226
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getClassType(JLcom/bytedance/ies/nle/editor_jni/NLENode;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-result-object p0

    return-object p0
.end method

.method public getEnable()Z
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtraKeys()Lcom/bytedance/ies/nle/editor_jni/VecString;
    .registers 4

    .line 101
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getExtraKeys(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>(JZ)V

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 222
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getId(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getName(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 213
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getStage(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    return-object p0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getStringId(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransientExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getUUID(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWorkingDirty()Lcom/bytedance/ies/nle/editor_jni/ChangeBits;
    .registers 4

    .line 201
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_getWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/ChangeBits;-><init>(JZ)V

    return-object v0
.end method

.method public hasEnable()Z
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hasEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .registers 4

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hasExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasName()Z
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hasName(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public hasTransientExtra(Ljava/lang/String;)Z
    .registers 4

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hasTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasUUID()Z
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hasUUID(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public hash()Ljava/lang/String;
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_hash(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isWorkingDirty()Z
    .registers 3

    .line 193
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_isWorkingDirty(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Z

    move-result p0

    return p0
.end method

.method public removeExtraWithKey(Ljava/lang/String;)V
    .registers 4

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_removeExtraWithKey(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    return-void
.end method

.method public removeTransientExtraWithKey(Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_removeTransientExtraWithKey(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_setEnable(JLcom/bytedance/ies/nle/editor_jni/NLENode;Z)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_setExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_setName(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    return-void
.end method

.method public setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_setTransientExtra(JLcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCMemOwn:Z

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_toJsonString(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLENode_toString(JLcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
