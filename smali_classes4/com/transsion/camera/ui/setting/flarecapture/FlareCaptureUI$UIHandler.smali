.class Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private mFlareCaptureUI:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;->mFlareCaptureUI:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;->mFlareCaptureUI:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    if-nez p0, :cond_e

    .line 57
    invoke-static {}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage, FlareCaptureUI is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_e
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    return-void

    .line 62
    :cond_16
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$mshowHint(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V

    return-void

    .line 65
    :cond_1a
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->-$$Nest$mhideHint(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V

    return-void
.end method
