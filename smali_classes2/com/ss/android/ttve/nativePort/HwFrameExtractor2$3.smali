.class Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$800(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 537
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->stopInternal()V
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$400(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)V

    .line 538
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->mSyncObject:Ljava/lang/Object;
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;->access$800(Lcom/ss/android/ttve/nativePort/HwFrameExtractor2;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 539
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method
