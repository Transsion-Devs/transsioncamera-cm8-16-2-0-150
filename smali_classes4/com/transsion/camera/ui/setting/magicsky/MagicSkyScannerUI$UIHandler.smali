.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 3

    .line 388
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 389
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    if-nez p0, :cond_b

    goto :goto_1b

    .line 398
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    :goto_1b
    return-void

    .line 407
    :cond_1c
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$mscanViewAnimStart(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void

    .line 410
    :cond_20
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$mscanViewAnimEnd(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void

    :cond_24
    const/4 p1, 0x0

    .line 404
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetIsStateTwo(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V

    return-void

    .line 401
    :cond_29
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$manimationStateTwo(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void
.end method
