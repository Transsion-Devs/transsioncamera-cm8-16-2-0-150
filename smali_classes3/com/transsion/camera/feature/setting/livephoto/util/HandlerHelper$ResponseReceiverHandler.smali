.class final Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResponseReceiverHandler"
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;

.field public releaseRequested:Z

.field public reply:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->reply:Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 39
    :try_start_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
