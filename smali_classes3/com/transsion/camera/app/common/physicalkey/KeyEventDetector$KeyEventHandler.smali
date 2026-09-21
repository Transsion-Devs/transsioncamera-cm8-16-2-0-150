.class Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Landroid/os/Looper;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 38
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    const/4 p1, 0x4

    if-eq v0, p1, :cond_11

    return-void

    .line 59
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onShoulderButtonSwipeEnd()V

    return-void

    .line 48
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPressStart(I)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fputmInLongPress(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)V

    return-void

    .line 55
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPressCancel(I)V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fputmInLongPress(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)V

    return-void

    .line 52
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPress(I)V

    return-void

    .line 45
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onClick(I)V

    return-void
.end method
