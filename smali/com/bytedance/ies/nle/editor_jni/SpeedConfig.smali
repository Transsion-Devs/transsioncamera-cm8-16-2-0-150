.class public Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 87
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->new_SpeedConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_SpeedConfig(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J
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

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->delete()V

    return-void
.end method

.method public getMode()I
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_mode_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)I

    move-result p0

    return p0
.end method

.method public getPoints()Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;
    .registers 5

    .line 54
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_points_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;-><init>(JZ)V

    return-object p0
.end method

.method public getRepeat_duration()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_repeat_duration_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMode(I)V
    .registers 4

    .line 62
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_mode_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;I)V

    return-void
.end method

.method public setPoints(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
    .registers 8

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_points_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V

    return-void
.end method

.method public setRepeat_duration(J)V
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->SpeedConfig_repeat_duration_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;J)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/SpeedConfig;->swigCMemOwn:Z

    return-void
.end method
