.class public Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V
    .registers 3

    .line 249
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    .line 256
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;

    if-nez p0, :cond_27

    goto :goto_2f

    :cond_27
    if-eqz v0, :cond_46

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    :goto_2f
    return-void

    .line 271
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doRelease()V

    .line 272
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->-$$Nest$msendConfirmationMessage(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Handler;)V

    return-void

    .line 267
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStop()V

    .line 268
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->-$$Nest$msendConfirmationMessage(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Handler;)V

    return-void

    .line 263
    :cond_46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStart()V

    .line 264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->-$$Nest$msendConfirmationMessage(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Handler;)V

    return-void
.end method
