.class Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    if-nez p0, :cond_23

    .line 46
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage toastUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_23
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_32

    const/16 p1, 0x65

    if-eq v0, p1, :cond_2e

    return-void

    .line 55
    :cond_2e
    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->-$$Nest$mhideAutoHideToastView(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;)V

    return-void

    .line 52
    :cond_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->-$$Nest$mdoShowToast(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
