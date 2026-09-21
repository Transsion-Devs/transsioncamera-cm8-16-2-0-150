.class Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 362
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->stopInternal()V
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$200(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)V

    .line 363
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange$3;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;

    # getter for: Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->mSyncObject:Ljava/lang/Object;
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;->access$600(Lcom/ss/android/ttve/nativePort/HwFrameExtractorRange;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 364
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method
