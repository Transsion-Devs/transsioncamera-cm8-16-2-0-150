.class public Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;,
        Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPendingMessageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingMessageQueueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandlerHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;

    .line 52
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_25

    const/4 v3, 0x1

    .line 53
    :try_start_19
    iput-boolean v3, v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->releaseRequested:Z

    .line 54
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v2

    goto :goto_9

    :catchall_22
    move-exception p0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_22

    :try_start_24
    throw p0

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 57
    :cond_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public sendMessageAndAwaitResponse(Landroid/os/Message;)V
    .registers 9

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResponseReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    new-instance v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_18
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_70

    .line 70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_28

    .line 71
    new-instance v3, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;

    invoke-direct {v3, v2, v1}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_29

    :cond_28
    move-object v3, v1

    :goto_29
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x0

    :goto_32
    if-nez v2, :cond_5d

    .line 76
    :try_start_34
    iget-boolean v3, v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->releaseRequested:Z
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_43

    if-eqz v3, :cond_39

    goto :goto_5d

    .line 80
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 81
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->reply:Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_42} :catch_45
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_32

    :catchall_43
    move-exception p0

    goto :goto_6e

    :catch_45
    move-exception v3

    .line 83
    :try_start_46
    sget-object v4, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_32

    .line 86
    :cond_5d
    :goto_5d
    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_43

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_64
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->mPendingMessageQueue:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw p0

    .line 86
    :goto_6e
    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_43

    throw p0

    :catchall_70
    move-exception p0

    .line 69
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method
