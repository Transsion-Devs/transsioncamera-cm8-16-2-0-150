.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 59
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEMediaMessageListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;-><init>(JZ)V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEMediaMessageListener(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->delete()V

    return-void
.end method

.method public onError(IIFLjava/lang/String;)V
    .registers 12

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_onError(JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;IIFLjava/lang/String;)V

    return-void
.end method

.method public onInfo(IIFLjava/lang/String;)V
    .registers 12

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_onInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;IIFLjava/lang/String;)V

    return-void
.end method

.method public onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_onKeyFrameProcess(JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onKeyFrameProcessWithType(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    .registers 14

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    invoke-virtual {p5}, Lcom/bytedance/ies/nle/editor_jni/KeyframeType;->swigValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_onKeyFrameProcessWithType(JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigSetCMemOwn(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigSetCMemOwn(Z)V

    .line 50
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;JZ)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCMemOwn:Z

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigSetCMemOwn(Z)V

    .line 55
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEMediaMessageListener_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;JZ)V

    return-void
.end method
