.class public Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 44
    invoke-static/range {p1 .. p8}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->new_DynamicLightWaveUtil(JJJLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public cancelCompile()I
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->DynamicLightWaveUtil_cancelCompile(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;)I

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;ZLcom/bytedance/ies/nle/editor_jni/DLWCallback;)I
    .registers 12

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/DLWCallback;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/DLWCallback;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->DynamicLightWaveUtil_compile(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;Ljava/lang/String;ZJLcom/bytedance/ies/nle/editor_jni/DLWCallback;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_DynamicLightWaveUtil(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J
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

.method public destroy()I
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->DynamicLightWaveUtil_destroy(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->delete()V

    return-void
.end method

.method public insertClipAndFilter(Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;Ljava/lang/String;)I
    .registers 10

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->DynamicLightWaveUtil_insertClipAndFilter(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;->swigCMemOwn:Z

    return-void
.end method
