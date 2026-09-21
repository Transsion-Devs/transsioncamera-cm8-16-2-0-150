.class final Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainHandler"
.end annotation


# instance fields
.field private final mScreenFlashUIRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .registers 3

    .line 256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;->mScreenFlashUIRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 262
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;->mScreenFlashUIRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    if-nez p0, :cond_17

    .line 266
    invoke-static {}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "screenFlashUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    .line 281
    invoke-static {}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_3a
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$mhandleHideScreenFlashView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    return-void

    .line 272
    :cond_3e
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$mhandleUpdateApertureView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    .line 273
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->-$$Nest$mhandleShowScreenFlashView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    return-void
.end method
