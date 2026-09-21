.class Lcom/transsion/camera/app/CameraApplication$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraApplication;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/CameraApplication;Landroid/os/Looper;)V
    .registers 3

    .line 682
    iput-object p1, p0, Lcom/transsion/camera/app/CameraApplication$MainHandler;->this$0:Lcom/transsion/camera/app/CameraApplication;

    .line 683
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 688
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 689
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 p0, 0x2

    if-eq v0, p0, :cond_e

    goto :goto_23

    .line 698
    :cond_e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 699
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_23

    .line 700
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_23

    .line 701
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_23
    :goto_23
    return-void

    .line 694
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$MainHandler;->this$0:Lcom/transsion/camera/app/CameraApplication;

    iput-boolean v1, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedResetFlashSnapLiteStatus:Z

    .line 695
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Exit time more than 1min, reset FlashSnap status"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 691
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$MainHandler;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mhandleAutoKill(Lcom/transsion/camera/app/CameraApplication;)V

    return-void
.end method
