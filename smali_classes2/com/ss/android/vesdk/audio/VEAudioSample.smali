.class public Lcom/ss/android/vesdk/audio/VEAudioSample;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;,
        Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;,
        Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;
    }
.end annotation


# instance fields
.field private byteSize:I

.field private sampleBuffer:Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->sampleBuffer:Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    .line 16
    iput p2, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->byteSize:I

    return-void
.end method

.method public static createByteArrayAudioSample([BI)Lcom/ss/android/vesdk/audio/VEAudioSample;
    .registers 3

    .line 107
    new-instance v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;-><init>([B)V

    .line 108
    new-instance p0, Lcom/ss/android/vesdk/audio/VEAudioSample;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;-><init>(Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;I)V

    return-object p0
.end method

.method public static createByteBufferAudioSample(Ljava/nio/ByteBuffer;I)Lcom/ss/android/vesdk/audio/VEAudioSample;
    .registers 3

    .line 119
    new-instance v0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 120
    new-instance p0, Lcom/ss/android/vesdk/audio/VEAudioSample;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/audio/VEAudioSample;-><init>(Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;I)V

    return-object p0
.end method


# virtual methods
.method public getByteSize()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->byteSize:I

    return p0
.end method

.method public getSampleBuffer()Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->sampleBuffer:Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;

    return-object p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->timeStamp:J

    return-wide v0
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/ss/android/vesdk/audio/VEAudioSample;->timeStamp:J

    return-void
.end method
