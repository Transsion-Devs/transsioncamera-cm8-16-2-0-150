.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 3

    .line 1517
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1518
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1523
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-nez p0, :cond_2a

    .line 1525
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",but mgr is null,return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1528
    :cond_2a
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_78

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p1, v0, :cond_48

    const/4 v0, 0x7

    if-eq p1, v0, :cond_37

    goto :goto_47

    .line 1539
    :cond_37
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 1540
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 1541
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    :cond_47
    :goto_47
    return-void

    .line 1533
    :cond_48
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay switch mode after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmLowMemoryLimitClickTime(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in PMasterMode when blur is on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1534
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    .line 1535
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 1536
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 1530
    :cond_78
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->playMoreModeGuideAnim()V

    return-void
.end method
