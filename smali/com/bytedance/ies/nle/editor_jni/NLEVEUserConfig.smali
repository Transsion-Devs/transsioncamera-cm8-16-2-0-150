.class public Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 68
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEVEUserConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addConfig(II)V
    .registers 5

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_addConfig__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;II)V

    return-void
.end method

.method public addConfig(IZ)V
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_addConfig__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;IZ)V

    return-void
.end method

.method public addConfig(Ljava/lang/String;I)V
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_addConfig__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;Ljava/lang/String;I)V

    return-void
.end method

.method public addConfig(Ljava/lang/String;Z)V
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_addConfig__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method public clearConfig()V
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_clearConfig(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEVEUserConfig(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J
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

.method public enableCheckCanvasFilter(Z)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEVEUserConfig_enableCheckCanvasFilter(JLcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;Z)V

    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->delete()V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEVEUserConfig;->swigCMemOwn:Z

    return-void
.end method
