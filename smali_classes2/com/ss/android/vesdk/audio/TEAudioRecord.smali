.class public Lcom/ss/android/vesdk/audio/TEAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioCaptureProxy;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final AUDIO_SOURCE_CAMCORDER:I = 0x5

.field public static final AUDIO_SOURCE_DEFAULT:I = 0x0

.field public static final AUDIO_SOURCE_MIC:I = 0x1

.field public static final AUDIO_SOURCE_VOICE_RECOGNITION:I = 0x6

.field private static final SUGGEST_CHANNEL_ARRAY:[I

.field private static final SUGGEST_SAMPLERATE_ARRAY:[I

.field private static final TAG:Ljava/lang/String; = "TEAudioRecord"


# instance fields
.field private hasInited:I

.field private mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

.field private mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioRecordStartTime:J

.field private mAudioRecordStopTime:J

.field private mAudioSource:I

.field private mBitsPerSample:I

.field private mBufferSizeInBytes:I

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mChannels:I

.field private mHandler:Landroid/os/Handler;

.field private mSampleNanoTimePerSecond:D

.field private mSampleRate:I

.field private mSampleSize:I

.field private mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3e80

    const/16 v1, 0x5622

    const v2, 0xac44

    const/16 v3, 0x1f40

    const/16 v4, 0x2b11

    .line 37
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->SUGGEST_SAMPLERATE_ARRAY:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->SUGGEST_CHANNEL_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 42
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioSource:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStopTime:J

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 42
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioSource:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStopTime:J

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I

    .line 61
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioCallback;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Landroid/media/AudioRecord;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/audio/TEAudioRecord;)D
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleNanoTimePerSecond:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getSysAudioFormat(I)I
    .registers 2

    const/16 p0, 0x8

    if-eq p1, p0, :cond_c

    const/16 p0, 0x10

    if-eq p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x3

    return p0
.end method

.method private getSysAudioSource(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 p0, 0x5

    if-eq p1, p0, :cond_a

    const/4 p0, 0x6

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    :cond_a
    return p0
.end method

.method private getSysChannelConfig(I)I
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    return p0

    :cond_7
    const/16 p0, 0xc

    return p0

    :cond_a
    const/16 p0, 0x10

    return p0
.end method

.method private initAudioRecord(IIII)I
    .registers 12

    .line 321
    const-string v0, ","

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->getSysAudioSource(I)I

    move-result v2

    .line 322
    invoke-direct {p0, p3}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->getSysChannelConfig(I)I

    move-result v4

    .line 323
    invoke-direct {p0, p4}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->getSysAudioFormat(I)I

    move-result v5

    .line 324
    invoke-static {p2, v4, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 326
    :try_start_12
    new-instance v1, Landroid/media/AudioRecord;

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 327
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a6

    .line 331
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->isPreferBuiltinMicInBluetoothScene()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 332
    new-instance p1, Lcom/ss/android/ttve/audio/TEAudioDevice;

    invoke-direct {p1}, Lcom/ss/android/ttve/audio/TEAudioDevice;-><init>()V

    .line 333
    invoke-virtual {p1}, Lcom/ss/android/ttve/audio/TEAudioDevice;->getOutputAudioDeviceType()Lcom/ss/android/ttve/model/VEAudioDeviceType;

    move-result-object p2

    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    if-ne p2, v0, :cond_46

    .line 334
    iget-object p2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Lcom/ss/android/ttve/audio/TEAudioDevice;->getBuiltinInputDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    move-object p1, v0

    goto/16 :goto_cd

    .line 347
    :cond_46
    :goto_46
    iput v3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    .line 348
    iput p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    .line 349
    iput p4, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    .line 350
    iput v6, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    .line 351
    sget-object p1, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Init audio recorder succeed, apply audio record sample rate "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " channels "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " buffer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 354
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getState()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 356
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    int-to-double p1, p1

    const-wide p3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleNanoTimePerSecond:D

    .line 357
    iget p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    iget p2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I

    const/4 p0, 0x0

    return p0

    .line 328
    :cond_a6
    :try_start_a6
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Audio record is not initialized!["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_cd} :catch_42

    .line 338
    :goto_cd
    sget-object p2, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V

    const p1, 0xac44

    .line 341
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    const/4 p1, 0x2

    .line 342
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    const/16 p1, 0x10

    .line 343
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    const/16 p0, -0x64

    return p0
.end method


# virtual methods
.method public getBufferSize()I
    .registers 1

    .line 308
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    return p0
.end method

.method public getChannels()I
    .registers 1

    .line 316
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    return p0
.end method

.method public getPcmBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getRecordingState()I
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    return p0
.end method

.method public getSampleRate()I
    .registers 1

    .line 312
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    return p0
.end method

.method public getState()I
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p0

    return p0
.end method

.method public init()I
    .registers 5

    .line 69
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioSource:I

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    iget v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    iget v3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->init(IIII)I

    move-result p0

    return p0
.end method

.method public init(I)I
    .registers 5

    .line 73
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioSource:I

    .line 74
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    iget v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->init(IIII)I

    move-result p0

    return p0
.end method

.method public init(III)I
    .registers 5

    .line 78
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioSource:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->init(IIII)I

    move-result p0

    return p0
.end method

.method public init(IIII)I
    .registers 13

    .line 82
    sget-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init audioSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bitsPerSample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 85
    const-string p0, "has inited"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 88
    :cond_39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->initAudioRecord(IIII)I

    move-result p2

    if-nez p2, :cond_42

    .line 90
    iput v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    return v2

    :cond_42
    const/4 p3, 0x0

    .line 95
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 97
    sget-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->SUGGEST_SAMPLERATE_ARRAY:[I

    array-length v1, v0

    move v3, v2

    :goto_4a
    if-ge v3, v1, :cond_66

    aget v4, v0, v3

    .line 98
    sget-object v5, Lcom/ss/android/vesdk/audio/TEAudioRecord;->SUGGEST_CHANNEL_ARRAY:[I

    array-length v6, v5

    move v7, v2

    :goto_52
    if-ge v7, v6, :cond_63

    aget p2, v5, v7

    .line 99
    invoke-direct {p0, p1, v4, p2, p4}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->initAudioRecord(IIII)I

    move-result p2

    if-nez p2, :cond_5d

    return v2

    .line 104
    :cond_5d
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 108
    :cond_66
    iput p2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    return p2
.end method

.method public init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    .registers 10

    .line 119
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 120
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getAudioSource()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getChannel()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getBitSamples()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->init(IIII)I

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    if-eqz v0, :cond_40

    .line 123
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v1, v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)V

    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    .line 124
    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setSampleRate(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    .line 125
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setChannel(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBitsPerSample:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setBitSamples(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    .line 127
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_AUDIO_CAPTURE_INIT:I

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onInfo(IIDLjava/lang/Object;)V

    .line 129
    :cond_40
    const-string v0, "te_record_audio_mic_type"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 131
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleRate:I

    int-to-long v0, v0

    const-string v2, "te_record_audio_mic_sample_rate"

    invoke-static {v3, v2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 132
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mChannels:I

    if-nez p0, :cond_57

    const/4 p0, 0x1

    :cond_57
    div-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-string p0, "te_record_audio_mic_frame_per_buffer"

    invoke-static {v3, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return p1
.end method

.method public read()I
    .registers 10

    .line 273
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 277
    :cond_7
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/16 p0, -0x69

    return p0

    .line 282
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-lez v0, :cond_34

    .line 283
    iget-wide v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_34

    .line 284
    const-string v1, "te_record_audio_first_frame"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    sub-long/2addr v5, v7

    const/4 v2, 0x0

    invoke-static {v2, v1, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 285
    iput-wide v3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_35

    :cond_34
    return v0

    :catch_35
    const/4 p0, -0x1

    return p0
.end method

.method public read([B)I
    .registers 11

    .line 250
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 254
    :cond_7
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/16 p0, -0x69

    return p0

    .line 259
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1

    if-lez p1, :cond_32

    .line 260
    iget-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_32

    .line 261
    const-string v0, "te_record_audio_first_frame"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v2, v0, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 262
    iput-wide v3, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_33

    :cond_32
    return p1

    :catch_33
    const/4 p0, -0x1

    return p0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1b

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->releaseAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V

    const/4 p1, -0x1

    .line 244
    iput p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->hasInited:I

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const/4 v0, 0x0

    const-string v1, "te_record_audio_release_record_time"

    invoke-static {v0, v1, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    :cond_1b
    return-void
.end method

.method public setAudioCallback(Lcom/ss/android/vesdk/audio/TEAudioCallback;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;

    return-void
.end method

.method public setAudioDevice(Lcom/ss/android/vesdk/audio/VEAudioDevice;)V
    .registers 2

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public start()I
    .registers 2

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public start(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 6

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    .line 149
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_d

    const/16 p0, -0x6c

    return p0

    .line 153
    :cond_d
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/16 p0, -0x69

    return p0

    .line 157
    :cond_17
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    const/4 p0, -0x2

    return p0

    .line 162
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->startAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V

    .line 164
    sget-object p1, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start hashCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    if-eqz p1, :cond_55

    .line 166
    iget v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I

    iget v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleNanoTimePerSecond:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;->prepareEstimate(JD)V

    goto :goto_55

    :catch_53
    move-exception p1

    goto :goto_6f

    .line 168
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_61

    .line 169
    new-instance v0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;-><init>(Lcom/ss/android/vesdk/audio/TEAudioRecord;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_61} :catch_53

    .line 202
    :cond_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    sub-long/2addr v0, p0

    const/4 p0, 0x0

    const-string p1, "te_record_audio_start_record_time"

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return p0

    .line 198
    :goto_6f
    sget-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V

    const/16 p0, -0x25b

    return p0
.end method

.method public stop()I
    .registers 2

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public stop(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStartTime:J

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStopTime:J

    .line 215
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_11

    const/16 p0, -0x6c

    return p0

    .line 219
    :cond_11
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/16 p0, -0x69

    return p0

    .line 224
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->stopAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V

    .line 226
    sget-object p1, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop hashCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_3d

    goto :goto_47

    :catch_3d
    move-exception p1

    .line 228
    sget-object v0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecordStopTime:J

    sub-long/2addr v0, p0

    const/4 p0, 0x0

    const-string p1, "te_record_audio_stop_record_time"

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return p0
.end method
