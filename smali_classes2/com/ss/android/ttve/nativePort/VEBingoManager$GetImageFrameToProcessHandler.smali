.class Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/VEBingoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImageFrameToProcessHandler"
.end annotation


# instance fields
.field private callback:Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private indexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

.field private videoPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/os/Looper;[Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;",
            ")V"
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    .line 603
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    new-instance p1, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->callback:Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    .line 600
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 604
    iput-object p3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->videoPaths:[Ljava/lang/String;

    .line 605
    iput-object p4, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->indexList:Ljava/util/List;

    .line 606
    iput-object p5, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 611
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 613
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    goto/16 :goto_b9

    .line 615
    :cond_a
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    iget-boolean p1, p1, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->interrupted:Z

    if-eqz p1, :cond_12

    goto/16 :goto_b9

    .line 619
    :cond_12
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->indexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_b9

    .line 620
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->indexList:Ljava/util/List;

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 621
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->videoPaths:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 623
    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    # invokes: Lcom/ss/android/ttve/nativePort/VEBingoManager;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->access$400(Lcom/ss/android/ttve/nativePort/VEBingoManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 624
    const-string v2, "VEBingoManager"

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_8f

    .line 630
    :cond_47
    iget-object v3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    const/4 v4, 0x0

    # invokes: Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoImageFrame(Landroid/graphics/Bitmap;FLjava/lang/String;)I
    invoke-static {v3, v1, v4, p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->access$500(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/graphics/Bitmap;FLjava/lang/String;)I

    move-result v3

    .line 631
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    if-gez v3, :cond_7e

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processBingoImageFrame fail, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x834

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->onError(ILjava/lang/String;)V

    return-void

    .line 638
    :cond_7e
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->onProgress()Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_b9

    .line 641
    :cond_87
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 625
    :cond_8f
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeBitmap fail, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x802

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->onError(ILjava/lang/String;)V

    :cond_b9
    :goto_b9
    return-void
.end method
