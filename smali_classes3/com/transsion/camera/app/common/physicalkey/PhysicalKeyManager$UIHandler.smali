.class Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V
    .registers 3

    .line 701
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 702
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-nez p0, :cond_25

    .line 709
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage physicalKeyManager is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 713
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[shutterAction] send shutter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_56

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4e

    return-void

    .line 725
    :cond_4e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$monShoulderButtonKeyUp(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V

    return-void

    .line 722
    :cond_56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$monShoulderButtonKeyDown(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V

    return-void

    .line 719
    :cond_5e
    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmKeyEventCallBack(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onClickImpl(I)V

    return-void

    .line 716
    :cond_6e
    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterClick(II)V

    return-void
.end method
