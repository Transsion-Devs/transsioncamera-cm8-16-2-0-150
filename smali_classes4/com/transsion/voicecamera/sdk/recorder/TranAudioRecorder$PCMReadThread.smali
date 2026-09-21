.class Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PCMReadThread"
.end annotation


# instance fields
.field private isRecording:Z

.field protected mBuffer:[F

.field private mRecorder:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    .line 193
    const-string p1, "PCMReadThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 148
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    .line 195
    const-string p0, "VCSDK-AudioRecorder"

    const-string p1, "PCMReadThread constructor"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createAudioRecorder()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mSampleRate:I
    invoke-static {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioChannels:I
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$100(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioFormat:I
    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$200(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x1180

    if-ge v1, v0, :cond_1c

    move v7, v0

    goto :goto_1d

    :cond_1c
    move v7, v1

    .line 161
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio recorder buffer size to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCSDK-AudioRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 166
    :goto_34
    new-instance v2, Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioSource:I
    invoke-static {v3}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$300(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mSampleRate:I
    invoke-static {v4}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioChannels:I
    invoke-static {v5}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$100(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioFormat:I
    invoke-static {v6}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$200(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v6

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 167
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_91

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create AudioRecord error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    .line 172
    iput-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    add-int/2addr v0, v3

    const/4 v2, 0x5

    if-ge v2, v0, :cond_8b

    .line 176
    const-string v0, "failed to create AudioRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_8b
    const-wide/16 v2, 0x46

    .line 179
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_34

    .line 186
    :cond_91
    :goto_91
    div-int/lit8 v7, v7, 0x4

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create AudioRecord ok buffer size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audioSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    .line 188
    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioSource:I
    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$300(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    .line 189
    # getter for: Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mSampleRate:I
    invoke-static {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onRecordCallback([FI)V
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordData([FI)V

    return-void
.end method

.method public recorderStatus()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return p0
.end method

.method public run()V
    .registers 8

    .line 217
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    const-string v1, "VCSDK-AudioRecorder"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCMReadThread start, tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1e
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    const v2, 0xc3501

    const/4 v3, 0x0

    if-nez v0, :cond_3e

    .line 219
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->createAudioRecorder()V

    .line 220
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_3e

    .line 221
    const-string v0, "fatal error, audio recorder is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_3b

    .line 223
    invoke-virtual {v0, v2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordError(I)V

    .line 225
    :cond_3b
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return-void

    .line 229
    :cond_3e
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4f

    .line 230
    const-string v0, "startRecording is RECORDSTATE_RECORDING"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return-void

    .line 234
    :cond_4f
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 235
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_61

    .line 236
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordStart()V

    .line 238
    :cond_61
    :goto_61
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v0, :cond_a8

    .line 240
    :try_start_65
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_9e

    .line 241
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    array-length v6, v5

    invoke-virtual {v0, v5, v3, v6, v3}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v0

    .line 242
    iget-boolean v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v5, :cond_61

    if-lez v0, :cond_82

    .line 244
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    invoke-virtual {p0, v5, v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->onRecordCallback([FI)V

    goto :goto_61

    :catch_80
    move-exception v0

    goto :goto_a4

    .line 246
    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recording error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    invoke-virtual {v0, v2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordError(I)V

    goto :goto_a8

    .line 255
    :cond_9e
    const-string v0, "fatal error, RecordListener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a3} :catch_80

    goto :goto_a8

    .line 259
    :goto_a4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_61

    .line 262
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_c3

    iget-boolean v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-nez v2, :cond_c3

    .line 263
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v4, :cond_bb

    .line 264
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 266
    :cond_bb
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 269
    :cond_c3
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_d0

    .line 270
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordEnd()V

    .line 272
    :cond_d0
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCMReadThread exit, tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    return-void
.end method

.method public startRecording()V
    .registers 2

    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    .line 200
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    .line 201
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public stopRecording()V
    .registers 2

    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 208
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
