.class Lcom/ss/android/vesdk/TECameraVideoRecorder$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->onDestroy()V
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

    .line 1429
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1432
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->releaseInteralRecorder()V
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    .line 1433
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1434
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->release()V

    :cond_16
    return-void
.end method
