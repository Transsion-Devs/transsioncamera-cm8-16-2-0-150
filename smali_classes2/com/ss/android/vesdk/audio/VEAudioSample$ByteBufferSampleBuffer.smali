.class public Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;
.super Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/audio/VEAudioSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteBufferSampleBuffer"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/ss/android/vesdk/audio/VEAudioSample$SampleBuffer;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioSample$ByteBufferSampleBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method
