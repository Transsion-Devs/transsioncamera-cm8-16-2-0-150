.class Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/VEBingoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFileFrameAvailableListener"
.end annotation


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final index:I

.field private singleFileTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

.field private volatile totalFrameNum:I

.field private final videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;ILjava/lang/String;ILcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;)V
    .registers 7

    .line 657
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 658
    iput p2, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->index:I

    .line 659
    iput-object p3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->videoPath:Ljava/lang/String;

    .line 660
    iput p4, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->totalFrameNum:I

    .line 661
    iput-object p5, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->singleFileTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;

    return-void
.end method


# virtual methods
.method public processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 11

    .line 666
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    int-to-float v4, p4

    iget-object v5, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->videoPath:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    # invokes: Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoVideoFrame(Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I
    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->access$600(Lcom/ss/android/ttve/nativePort/VEBingoManager;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_70

    .line 676
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "index: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->index:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoPath: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->videoPath:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", processBingoVideoFrame fail: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "VEBingoManager"

    invoke-static {v2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object p3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->singleFileTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->index:I

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x325

    invoke-interface {p3, p1, p0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;->onError(ILjava/lang/String;)V

    return p2

    .line 680
    :cond_70
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 681
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->singleFileTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;

    iget-object p3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    iget p4, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->totalFrameNum:I

    invoke-interface {p1, p3, p4}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;->onProgress(II)Z

    move-result p1

    if-nez p1, :cond_92

    .line 682
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;->totalFrameNum:I

    if-ne p1, p0, :cond_90

    goto :goto_92

    :cond_90
    const/4 p0, 0x1

    return p0

    :cond_92
    :goto_92
    return p2
.end method
