.class Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 3

    .line 1569
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1570
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1575
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    .line 1576
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_30

    const/16 p1, 0x67

    if-eq v0, p1, :cond_26

    const/16 p1, 0x69

    if-eq v0, p1, :cond_1f

    const/16 p1, 0x6a

    if-eq v0, p1, :cond_1b

    return-void

    .line 1590
    :cond_1b
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mdoQrcodeViewCLose(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    return-void

    .line 1586
    :cond_1f
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhideBoxView(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 1587
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mresetBoxViewRect(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    return-void

    .line 1581
    :cond_26
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhideToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 1582
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhideIcon(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    .line 1583
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mhidePopWindow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    return-void

    .line 1578
    :cond_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$mupdateResult(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Ljava/util/List;)V

    return-void
.end method
