.class Lcom/ss/android/vesdk/TERecorder$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 3

    .line 5280
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$25;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$25;->val$listener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 5283
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$25;->val$listener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-eqz p0, :cond_f

    .line 5285
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/audio/VEAudioSample;->createByteBufferAudioSample(Ljava/nio/ByteBuffer;I)Lcom/ss/android/vesdk/audio/VEAudioSample;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    :cond_f
    return-void
.end method
