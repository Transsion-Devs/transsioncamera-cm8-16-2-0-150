.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;->this$1:Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;->this$1:Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timer done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;->this$1:Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->processFrameLast()V
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->access$100(Lcom/ss/android/ttve/nativePort/HwFrameExtractor;)V

    .line 271
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1$1;->this$1:Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor$1;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->stop()V

    return-void
.end method
