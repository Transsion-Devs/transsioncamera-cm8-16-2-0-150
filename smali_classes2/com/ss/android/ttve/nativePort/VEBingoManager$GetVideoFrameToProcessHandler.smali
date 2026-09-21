.class Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/VEBingoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVideoFrameToProcessHandler"
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

.field private ptsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

.field private sizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/ttve/common/TESizei;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

.field private videoPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/os/Looper;Ljava/util/Map;[Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/ttve/common/TESizei;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;",
            ")V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    .line 533
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 529
    new-instance p1, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->callback:Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    .line 530
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 534
    iput-object p3, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->ptsMap:Ljava/util/Map;

    .line 535
    iput-object p4, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->videoPaths:[Ljava/lang/String;

    .line 536
    iput-object p5, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->sizeMap:Ljava/util/Map;

    .line 537
    iput-object p6, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->indexList:Ljava/util/List;

    .line 538
    iput-object p7, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    return-void
.end method

.method static synthetic access$300(Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;)Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;
    .registers 1

    .line 522
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 543
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 545
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    goto/16 :goto_ac

    .line 547
    :cond_a
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    iget-boolean p1, p1, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->interrupted:Z

    if-eqz p1, :cond_12

    goto/16 :goto_ac

    .line 551
    :cond_12
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->indexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_ac

    .line 552
    iget-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->indexList:Ljava/util/List;

    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 553
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->videoPaths:[Ljava/lang/String;

    aget-object v3, v0, v2

    .line 554
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->ptsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [I

    .line 555
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->sizeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ttve/common/TESizei;

    .line 556
    iget-object v7, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->callback:Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    new-instance v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;

    iget-object v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    array-length v4, v6

    new-instance v5, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler$1;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;ILjava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;ILjava/lang/String;ILcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;)V

    invoke-virtual {v7, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    .line 577
    iget v5, p1, Lcom/ss/android/ttve/common/TESizei;->width:I

    iget p1, p1, Lcom/ss/android/ttve/common/TESizei;->height:I

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->callback:Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v6

    move v6, p1

    invoke-static/range {v3 .. v11}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFramesMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I

    move-result p1

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFramesMore result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, "VEBingoManager"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_ac

    const/4 p1, 0x0

    .line 581
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 582
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;->singleThreadTaskListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    const/16 p1, -0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->onError(ILjava/lang/String;)V

    :cond_ac
    :goto_ac
    return-void
.end method
