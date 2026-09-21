.class public Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 59
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->new_NLEEffectMsgListenerWrapper()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;-><init>(JZ)V

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEEffectMsgListenerWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEEffectMsgListenerWrapper(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->delete()V

    return-void
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 16

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;

    if-ne v0, v1, :cond_13

    iget-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEEffectMsgListenerWrapper_onMessageReceived(JLcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;IIILjava/lang/String;)V

    return-void

    :cond_13
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    iget-wide p0, v4, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    move v9, v7

    move-object v10, v8

    move v7, v5

    move v8, v6

    move-object v6, v4

    move-wide v4, p0

    invoke-static/range {v4 .. v10}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEEffectMsgListenerWrapper_onMessageReceivedSwigExplicitNLEEffectMsgListenerWrapper(JLcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;IIILjava/lang/String;)V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigSetCMemOwn(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigSetCMemOwn(Z)V

    .line 50
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEEffectMsgListenerWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;JZ)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCMemOwn:Z

    return-void
.end method

.method public swigTakeOwnership()V
    .registers 4

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigSetCMemOwn(Z)V

    .line 55
    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEEffectMsgListenerWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;JZ)V

    return-void
.end method
