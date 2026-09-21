.class Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field mGroupCaptureUI:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;->mGroupCaptureUI:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;->mGroupCaptureUI:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    if-nez p0, :cond_e

    .line 97
    invoke-static {}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage, null GroupCaptureUI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_e
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    return-void

    .line 105
    :cond_17
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 102
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->showIcon()V

    return-void
.end method
