.class Lcom/ss/android/vesdk/TECameraVideoRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 15

    .line 237
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    if-ne p1, v0, :cond_b6

    .line 238
    const-string v0, "TECameraVideoRecorder"

    if-nez p2, :cond_9b

    .line 239
    move-object v1, p5

    check-cast v1, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 240
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v4

    .line 241
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v5

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v6

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 242
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v7

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result v8

    .line 240
    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initAudioConfig(IIIII)I

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVEAudioCapture inited: channelCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sampleHz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " encode sample rate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v3, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 246
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " encode channel count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v3, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 247
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getDataStore()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 249
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->onInfo(IIDLjava/lang/Object;)V

    .line 251
    :cond_94
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 p1, 0x2

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$202(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    return-void

    :cond_9b
    move v3, p2

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initAudio error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 p1, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$202(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    :cond_b6
    return-void
.end method

.method public onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 6

    .line 261
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    if-eqz v0, :cond_24

    .line 262
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    .line 263
    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getByteSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->getTimeStamp()J

    move-result-wide v2

    .line 262
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->feed([BIJ)I

    return-void

    .line 264
    :cond_24
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 265
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    :cond_35
    return-void
.end method
