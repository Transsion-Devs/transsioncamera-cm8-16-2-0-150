.class public Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;
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
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public addMessageListener(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)V
    .registers 8

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_addMessageListener(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEPlayer(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J
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
    .registers 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 74
    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_destroy(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    .line 76
    monitor-exit p0

    return v0

    .line 77
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_f

    throw v0
.end method

.method public dumpVEModel()Ljava/lang/String;
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_dumpVEModel(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpVESequence()Ljava/lang/String;
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_dumpVESequence(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_getCurrentPosition(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pause()I
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_pause(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public play()I
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_play(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public prepare()I
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_prepare(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public rePrepare()I
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_rePrepare(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public refreshCurrentFrame(I)I
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_refreshCurrentFrame(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;I)I

    move-result p0

    return p0
.end method

.method public releaseAndroidSurface()V
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_releaseAndroidSurface(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)V

    return-void
.end method

.method public releaseEngine()I
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_releaseEngine__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public releaseEngine(Z)I
    .registers 4

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_releaseEngine__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;Z)I

    move-result p0

    return p0
.end method

.method public releaseResource()I
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_releaseResource(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method public seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I
    .registers 10

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->swigValue()I

    move-result v5

    move-object v2, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_seekTime(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JI)I

    move-result p0

    return p0
.end method

.method public seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I
    .registers 12

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I

    move-result p0

    return p0
.end method

.method public setAndroidSurface(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 4

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_setAndroidSurface(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public setNleModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_setNleModel(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public setPlayRange(JJ)I
    .registers 12

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_setPlayRange__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJ)I

    move-result p0

    return p0
.end method

.method public setPlayRange(JJLcom/bytedance/ies/nle/editor_jni/NLESetRangeMode;)I
    .registers 14

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-virtual {p5}, Lcom/bytedance/ies/nle/editor_jni/NLESetRangeMode;->swigValue()I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_setPlayRange__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJI)I

    move-result p0

    return p0
.end method

.method public setPreviewSurfaceSize(II)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_setPreviewSurfaceSize(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;II)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    return-object p0
.end method

.method public state()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_state(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object p0

    return-object p0
.end method

.method public stop()I
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEPlayer_stop(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->swigCMemOwn:Z

    return-void
.end method
