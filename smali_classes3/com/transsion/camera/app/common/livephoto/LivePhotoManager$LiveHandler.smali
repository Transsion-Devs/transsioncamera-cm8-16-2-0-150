.class Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    return-void

    .line 71
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->stopLiveShot()V

    return-void

    .line 68
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->startLiveShot()V

    return-void
.end method
