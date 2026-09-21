.class public Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
.super Lcom/bytedance/ies/nle/editor_jni/NLENode;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwnDerived:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 172
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEResourceNode()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 7

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_SWIGSmartPtrUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;-><init>(JZ)V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCMemOwnDerived:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    return-void
.end method

.method public static dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;
    .registers 5

    .line 50
    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_dynamicCast(JLcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_10
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>(JZ)V

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_clone(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->clone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 39
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 40
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCMemOwnDerived:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCMemOwnDerived:Z

    .line 42
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEResourceNode(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 44
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    .line 46
    :cond_18
    invoke-super {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->delete()V
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->delete()V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResourceFile()Ljava/lang/String;
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceId()Ljava/lang/String;
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceName()Ljava/lang/String;
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceTag()Lcom/bytedance/ies/nle/editor_jni/NLEResTag;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResTag;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEResTag;

    move-result-object p0

    return-object p0
.end method

.method public getResourceType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_getWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDuration()Z
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasHeight()Z
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasResourceFile()Z
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasResourceId()Z
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasResourceName()Z
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasResourceTag()Z
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasResourceType()Z
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public hasWidth()Z
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_hasWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public isLocal()Z
    .registers 3

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_isLocal(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)Z

    move-result p0

    return p0
.end method

.method public setDuration(J)V
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setDuration(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V

    return-void
.end method

.method public setHeight(J)V
    .registers 5

    .line 154
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setHeight(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V

    return-void
.end method

.method public setResourceFile(Ljava/lang/String;)V
    .registers 4

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setResourceFile(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setResourceId(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .registers 4

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setResourceName(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;Ljava/lang/String;)V

    return-void
.end method

.method public setResourceTag(Lcom/bytedance/ies/nle/editor_jni/NLEResTag;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResTag;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setResourceTag(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;I)V

    return-void
.end method

.method public setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setResourceType(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;I)V

    return-void
.end method

.method public setWidth(J)V
    .registers 5

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEResourceNode_setWidth(JLcom/bytedance/ies/nle/editor_jni/NLEResourceNode;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->swigCMemOwnDerived:Z

    .line 30
    invoke-super {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->swigSetCMemOwn(Z)V

    return-void
.end method
