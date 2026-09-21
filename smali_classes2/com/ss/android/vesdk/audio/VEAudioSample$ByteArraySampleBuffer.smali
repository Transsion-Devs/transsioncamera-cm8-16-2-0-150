.class public Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;
.super Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/audio/VEAudioSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArraySampleBuffer"
.end annotation


# instance fields
.field public byteArray:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->byteArray:[B

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteArraySampleBuffer;->byteArray:[B

    return-object p0
.end method
