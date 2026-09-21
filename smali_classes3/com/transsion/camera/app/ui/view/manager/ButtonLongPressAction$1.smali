.class Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;Landroid/os/Looper;)V
    .registers 3

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;->this$0:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;->this$0:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne v0, v1, :cond_23

    .line 28
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object v0, p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 29
    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->-$$Nest$fgetmActionEventListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;)Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;->this$0:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;->this$0:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->-$$Nest$fgetmLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;)Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;->onLongPress()V

    :cond_23
    return-void
.end method
