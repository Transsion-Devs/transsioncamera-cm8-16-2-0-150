.class public Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;",
            ">;"
        }
    .end annotation
.end field

.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 61
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEEditor()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->listeners:Ljava/util/List;

    .line 29
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCMemOwn:Z

    .line 30
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 34
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addConsumer(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
    .registers 9

    .line 329
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_addConsumer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    return-void
.end method

.method public canRedo()Z
    .registers 5

    .line 293
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 296
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_canRedo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public canUndo()Z
    .registers 5

    .line 286
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_canUndo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public commit()Z
    .registers 5

    .line 87
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_commit(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 44
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 45
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 46
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCMemOwn:Z

    .line 47
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEEditor(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 49
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 51
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

.method public done()Z
    .registers 5

    .line 231
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 234
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_done__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public done(Ljava/lang/String;)Z
    .registers 6

    .line 213
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_a
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_done__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public exportEditor(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 6

    .line 361
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 362
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEError;->FAILED:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    return-object p0

    .line 364
    :cond_b
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_exportEditor(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public getAllResources()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;
    .registers 5

    .line 300
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_a
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_getAllResources(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;-><init>(JZ)V

    return-object v0
.end method

.method public getBranch()Lcom/bytedance/ies/nle/editor_jni/NLEBranch;
    .registers 7

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 128
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_getBranch(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 129
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEBranch;-><init>(JZ)V

    return-object p0
.end method

.method public getGlobalExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 351
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 352
    const-string p0, ""

    return-object p0

    .line 354
    :cond_b
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_getGlobalExtra(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 7

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 108
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_getModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 109
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    return-object p0
.end method

.method public getStageModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 7

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return-object v5

    .line 120
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_getStageModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    return-object v5

    .line 121
    :cond_13
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    return-object p0
.end method

.method public goTo(Ljava/lang/String;)Z
    .registers 6

    .line 195
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 198
    :cond_a
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_goTo(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public importEditor(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 6

    .line 371
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 372
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEError;->FAILED:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    return-object p0

    .line 374
    :cond_b
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_importEditor(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public redo()Z
    .registers 5

    .line 279
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 282
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_redo__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public redo(I)Z
    .registers 6

    .line 267
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_a
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_redo__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;I)Z

    move-result p0

    return p0
.end method

.method public removeConsumer(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
    .registers 9

    .line 340
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_removeConsumer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    return-void
.end method

.method public resetHead()Z
    .registers 5

    .line 179
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_resetHead(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public restore(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 6

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 70
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEError;->FAILED:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    return-object p0

    .line 72
    :cond_b
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_restore(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public setBranchListener(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V
    .registers 8

    .line 311
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 314
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_setBranchListener(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEBranchListener;)V

    return-void
.end method

.method public setGlobalExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 378
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 381
    :cond_9
    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_setGlobalExtra(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V
    .registers 9

    .line 318
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 321
    :cond_9
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_setListener(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    return-void
.end method

.method public setModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 8

    .line 94
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 97
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_setModel(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public setSynchronizer(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;)V
    .registers 6

    .line 385
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 388
    :cond_9
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SWIGTYPE_p_std__shared_ptrT_nle__resource__NLEResourceSynchronizer_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_setSynchronizer(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;J)V

    return-void
.end method

.method public store()Ljava/lang/String;
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_store(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trim(JJ)V
    .registers 12

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 143
    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_trim(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;JJ)V

    return-void
.end method

.method public trimRange(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 164
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_a
    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_trimRange(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public undo()Z
    .registers 5

    .line 255
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_a
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_undo__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z

    move-result p0

    return p0
.end method

.method public undo(I)Z
    .registers 6

    .line 243
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_a
    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEEditor_undo__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEEditor;I)Z

    move-result p0

    return p0
.end method
