.class public Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/RecordInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleAudioProxyImpl"
.end annotation


# instance fields
.field private mHandler:J

.field private mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/medialib/RecordInvoker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4177
    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    return-void
.end method


# virtual methods
.method public addTrack(JILjava/lang/String;Z)V
    .registers 15

    .line 4213
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_15

    .line 4215
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeAddStyleAudioTrack(JJILjava/lang/String;Z)V
    invoke-static/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->access$800(Lcom/ss/android/medialib/RecordInvoker;JJILjava/lang/String;Z)V

    return-void

    .line 4217
    :cond_15
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio addTrack failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 4182
    invoke-virtual {p1}, Lcom/ss/android/medialib/RecordInvoker;->getHandler()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    .line 4183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    goto :goto_1b

    .line 4185
    :cond_10
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_17

    .line 4186
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_17
    const-wide/16 v0, 0x0

    .line 4188
    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    .line 4191
    :goto_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attachNativeLayer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordInvoker"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableBGM(JZ)V
    .registers 11

    .line 4295
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4297
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleEnableBGM(JJZ)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1600(Lcom/ss/android/medialib/RecordInvoker;JJZ)V

    return-void

    .line 4299
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio enableBGM failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableStyleAudioEncode(JZ)V
    .registers 11

    .line 4305
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4307
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleEnableAudioEncode(JJZ)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1700(Lcom/ss/android/medialib/RecordInvoker;JJZ)V

    return-void

    .line 4309
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio enableStyleAudioEncode failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDuration(JI)D
    .registers 11

    .line 4243
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4246
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeGetStyleAudioTrackDuration(JJI)D
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1100(Lcom/ss/android/medialib/RecordInvoker;JJI)D

    move-result-wide p0

    return-wide p0

    .line 4248
    :cond_14
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio getDuration failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public init(II)J
    .registers 7

    .line 4197
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "RecordInvoker"

    const-wide/16 v2, -0x1

    if-nez v0, :cond_12

    .line 4198
    const-string p0, "style audio init failed, no native handler"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 4202
    :cond_12
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_23

    .line 4204
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeInitStyleAudioEngine(JII)J
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$700(Lcom/ss/android/medialib/RecordInvoker;JII)J

    move-result-wide p0

    return-wide p0

    .line 4206
    :cond_23
    const-string p0, "StyleAudio init failed, no invoker"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public makeCurrent(JZ)V
    .registers 11

    .line 4255
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4257
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeMakeCurrentStyleAudioEngineEnable(JJZ)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1200(Lcom/ss/android/medialib/RecordInvoker;JJZ)V

    return-void

    .line 4259
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio makeCurrent failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public operatePlayer(JI)V
    .registers 11

    .line 4285
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4287
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeOperateStyleAudio(JJI)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1500(Lcom/ss/android/medialib/RecordInvoker;JJI)V

    return-void

    .line 4289
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio operatePlayer failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release(J)V
    .registers 6

    .line 4275
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_10

    .line 4277
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleAudioEngine(JJ)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$1400(Lcom/ss/android/medialib/RecordInvoker;JJ)V

    return-void

    .line 4279
    :cond_10
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio release failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAllTrack(J)V
    .registers 6

    .line 4233
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v0, :cond_10

    .line 4235
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveAllStyleAudioTrack(JJ)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$1000(Lcom/ss/android/medialib/RecordInvoker;JJ)V

    return-void

    .line 4237
    :cond_10
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio removeAllTrack failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTrack(JI)V
    .registers 11

    .line 4223
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4225
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveStyleAudioTrack(JJI)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$900(Lcom/ss/android/medialib/RecordInvoker;JJI)V

    return-void

    .line 4227
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio removeTrack failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restore(JLjava/lang/String;)V
    .registers 11

    .line 4265
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_13

    .line 4267
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move-object v6, p3

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeRestoreStyleContext(JJLjava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$1300(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)V

    return-void

    .line 4269
    :cond_13
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio restore failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoopCount(JII)V
    .registers 13

    .line 4340
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4342
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetStyleAudioLoopCount(JJII)V
    invoke-static/range {v1 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->access$2000(Lcom/ss/android/medialib/RecordInvoker;JJII)V

    return-void

    .line 4344
    :cond_14
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio setLoopCount failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMute(JZI)V
    .registers 14

    .line 4315
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "RecordInvoker"

    if-nez v0, :cond_10

    .line 4316
    const-string p0, "StyleAudio setMute failed, no native handler"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4320
    :cond_10
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v2, :cond_24

    .line 4322
    iget-wide v3, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v5, p1

    move v7, p3

    move v8, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleSetMute(JJZI)V
    invoke-static/range {v2 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->access$1800(Lcom/ss/android/medialib/RecordInvoker;JJZI)V

    return-void

    .line 4324
    :cond_24
    const-string p0, "StyleAudio setMute failed, no invoker"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(JDI)V
    .registers 15

    .line 4330
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mWeakRecorderInvoker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/medialib/RecordInvoker;

    if-eqz v1, :cond_14

    .line 4332
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->mHandler:J

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeStyleSetVolume(JJDI)V
    invoke-static/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->access$1900(Lcom/ss/android/medialib/RecordInvoker;JJDI)V

    return-void

    .line 4334
    :cond_14
    const-string p0, "RecordInvoker"

    const-string p1, "StyleAudio setVolume failed, no invoker"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
