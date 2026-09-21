.class public Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureShotListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Looper;)V
    .registers 3

    .line 375
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;->this$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    return-void

    .line 384
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;->this$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->putCaptureShot(Ljava/lang/String;)V

    return-void
.end method
