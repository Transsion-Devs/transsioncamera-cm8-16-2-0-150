.class Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/TEAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realInitMic(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 4

    .line 179
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz p0, :cond_9

    .line 180
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onError(IILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 12

    .line 154
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    if-ne p1, v0, :cond_f

    if-eqz p2, :cond_f

    .line 155
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$000(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_27

    .line 160
    :cond_f
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    move v1, p1

    move v2, p2

    if-eqz v0, :cond_1c

    move-wide v3, p3

    move-object v5, p5

    .line 161
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    .line 164
    :cond_1c
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_CAPTURE:I

    if-ne v1, p0, :cond_27

    .line 165
    const-string p0, "te_record_audio_mic_running_err"

    int-to-long p1, v2

    const/4 p3, 0x0

    invoke-static {p3, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz p0, :cond_9

    .line 173
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    :cond_9
    return-void
.end method
