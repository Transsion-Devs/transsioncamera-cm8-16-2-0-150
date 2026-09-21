.class public Lcom/ss/android/vesdk/VEAudioRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "VEAudioRecorder"


# instance fields
.field private mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

.field private mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

.field private mCurrentTime:J

.field private mRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

.field private mWavFilePath:Ljava/lang/String;

.field private mbRecording:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    .line 45
    new-instance v0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    new-instance v1, Lcom/ss/android/ttve/audio/TEDubWriter;

    invoke-direct {v1}, Lcom/ss/android/ttve/audio/TEDubWriter;-><init>()V

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;-><init>(Lcom/ss/android/ttve/audio/TEAudioWriterInterface;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEAudioRecorder;-><init>()V

    .line 56
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public delete(II)I
    .registers 6

    const/16 v0, -0x64

    if-lt p1, p2, :cond_5

    return v0

    :cond_5
    if-gez p1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    const-string v2, "iesve_veaudiorecorder_audio_delete"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 198
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->clearWavSeg(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public destory()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEAudioRecorder destory in. mbRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", releaseAudioRecoder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->unInit()V

    return-void
.end method

.method public destory(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEAudioRecorder destory in. mbRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", releaseAudioRecoder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->unInit(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public getCurrentTime()J
    .registers 3

    .line 208
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mCurrentTime:J

    return-wide v0
.end method

.method public getWavFilePath()Ljava/lang/String;
    .registers 3

    .line 219
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    if-nez v0, :cond_7

    .line 221
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    return-object p0

    .line 220
    :cond_7
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0x69

    const-string v1, "audio is recording"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/VEAudioEncodeSettings;I)I
    .registers 4

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/vesdk/VEAudioRecorder;->init(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;I)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)I
    .registers 4

    .line 107
    iput-object p2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    const/4 p2, 0x0

    .line 108
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    .line 109
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VEAudioRecorder init in. mWavFilePath = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VEAudioRecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->init(I)I

    return p2
.end method

.method public init(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;I)I
    .registers 7

    .line 69
    iput-object p2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VEAudioRecorder"

    if-eqz v0, :cond_1f

    .line 72
    const-string p1, "Empty directory use default path"

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->getResManager()Lcom/ss/android/vesdk/runtime/VEResManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VEResManager;->genRecordWavPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    goto :goto_35

    .line 75
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wav save path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    .line 79
    :goto_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VEAudioRecorder init in. mWavFilePath = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->init(I)I

    .line 82
    iget-object p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->getSampleRateInHz()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v0, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->generateMuteWav(Ljava/lang/String;III)I

    return p2
.end method

.method public startRecord(FII)I
    .registers 5

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEAudioRecorder;->startRecord(FIILcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public startRecord(FIILcom/bytedance/bpea/basics/Cert;)I
    .registers 12

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEAudioRecorder startRecord in. mbRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    if-eqz v0, :cond_1f

    const/16 p0, -0x69

    return p0

    .line 130
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mWavFilePath:Ljava/lang/String;

    float-to-double v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->startRecording(Ljava/lang/String;DIILcom/bytedance/bpea/basics/Cert;)I

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    const/4 p0, 0x0

    return p0
.end method

.method public stopRecord()J
    .registers 3

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEAudioRecorder;->stopRecord(Lcom/bytedance/bpea/basics/Cert;)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopRecord(Lcom/bytedance/bpea/basics/Cert;)J
    .registers 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEAudioRecorder stopRecord in. mbRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    if-nez v0, :cond_1f

    const-wide/16 p0, -0x69

    return-wide p0

    .line 158
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    invoke-virtual {v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->getAudioCaller()Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/audio/TEDubWriter;

    if-eqz v0, :cond_2f

    .line 160
    invoke-virtual {v0}, Lcom/ss/android/ttve/audio/TEDubWriter;->getCurrentTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mCurrentTime:J

    .line 162
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mAudioRecorder:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->stopRecording(Lcom/bytedance/bpea/basics/Cert;)Z

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stop record ,current time is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mCurrentTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mbRecording:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 166
    const-string v1, "iesve_veaudiorecorder_audio_record"

    invoke-static {v1, p1, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 167
    iget-wide p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mCurrentTime:J

    return-wide p0
.end method

.method public toAAC()Ljava/lang/String;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioRecorder;->mRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getResManager()Lcom/ss/android/vesdk/runtime/VEResManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEResManager;->genRecordAacPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
