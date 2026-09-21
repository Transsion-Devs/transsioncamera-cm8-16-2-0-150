.class Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->init(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;Lcom/ss/android/vesdk/VEAudioCaptureSettings;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    iput-object p2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;->val$settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;

    # getter for: Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->audioCapture:Lcom/ss/android/vesdk/VEAudioCapture;
    invoke-static {v0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;->access$000(Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder;)Lcom/ss/android/vesdk/VEAudioCapture;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;->val$settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/VEAudioCapture;->init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioCaptureRecorder$1;->call()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
