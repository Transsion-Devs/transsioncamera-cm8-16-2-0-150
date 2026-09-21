.class public Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/VecInt;
    .registers 11

    .line 48
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/VecInt;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEFilterRuntimeController_checkComposerNodeExclusion(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecInt;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEFilterRuntimeController(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J
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

.method public doLensOneKeyDetect()I
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEFilterRuntimeController_doLensOneKeyDetect(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->delete()V

    return-void
.end method

.method public getColorFilterIntensity(Ljava/lang/String;)F
    .registers 4

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEFilterRuntimeController_getColorFilterIntensity(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCMemOwn:Z

    return-void
.end method

.method public updateMultiComposerNodes(Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecFloat;Ljava/lang/String;)I
    .registers 18

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/VecString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecString;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEFilterRuntimeController_updateMultiComposerNodes(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;JLcom/bytedance/ies/nle/editor_jni/VecString;JLcom/bytedance/ies/nle/editor_jni/VecString;JLcom/bytedance/ies/nle/editor_jni/VecFloat;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
