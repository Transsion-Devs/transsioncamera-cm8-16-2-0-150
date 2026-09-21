.class Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/audio/AudioDataProcessThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessHandler"
.end annotation


# instance fields
.field private mProcessor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/medialib/audio/AudioDataProcessThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V
    .registers 3

    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;->mProcessor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    .line 241
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioDataProcessThread$ProcessHandler;->mProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    .line 243
    const-string v2, "AudioDataProcessThread"

    if-nez v1, :cond_14

    .line 244
    const-string p0, "EncoderHandler.handleMessage: encoder is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz v0, :cond_95

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8a

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_77

    if-eq v0, v4, :cond_20

    goto :goto_76

    .line 263
    :cond_20
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mStopped:Z
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$300(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 264
    const-string p0, "Cannot feed() after stopFeeding."

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_2c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [B

    .line 268
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 269
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mBufferCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$400(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 270
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$500(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 272
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$100(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 273
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mListener:Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$500(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;

    move-result-object v1

    invoke-interface {v1, p0, p1, v3, v4}, Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;->onProcessData([BIJ)I

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer processed, size="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " buffers remaining"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void

    .line 257
    :cond_77
    const-string p1, "Exit loop"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    # invokes: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStopFeeding()V
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$200(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V

    .line 259
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void

    .line 253
    :cond_8a
    # getter for: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->mTimeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$100(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 254
    # invokes: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStopFeeding()V
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$200(Lcom/ss/android/medialib/audio/AudioDataProcessThread;)V

    return-void

    .line 250
    :cond_95
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    # invokes: Lcom/ss/android/medialib/audio/AudioDataProcessThread;->handleStartFeeding(IID)V
    invoke-static {v1, p0, v0, v2, v3}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->access$000(Lcom/ss/android/medialib/audio/AudioDataProcessThread;IID)V

    return-void
.end method
