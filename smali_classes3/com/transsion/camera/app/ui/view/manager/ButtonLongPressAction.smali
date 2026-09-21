.class public Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;
.super Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;
    }
.end annotation


# instance fields
.field private final mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

.field private final mLongPressHandler:Landroid/os/Handler;

.field private mLongPressListener:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionEventListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;)Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;)Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressListener:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$1;-><init>(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    return-void
.end method


# virtual methods
.method public cancelTouchEvent()V
    .registers 4

    .line 44
    invoke-super {p0}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->cancelTouchEvent()V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 46
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 7

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_31

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    goto :goto_3a

    .line 59
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_21

    return v2

    .line 62
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object p2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p1, p2, :cond_30

    .line 64
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    :cond_30
    return v2

    .line 69
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    :goto_3a
    return v2

    .line 54
    :cond_3b
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressHandler:Landroid/os/Handler;

    .line 56
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method

.method public setLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->mLongPressListener:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;

    return-void
.end method
