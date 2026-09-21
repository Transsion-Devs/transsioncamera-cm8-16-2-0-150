.class public Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;,
        Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

.field private mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

.field private mInLongPress:Z

.field private mIsKeyDown:Z

.field private mIsLongPressEnabled:Z

.field private mLongPresskeyCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInLongPress(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "KeyEventDetector"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->LONGPRESS_TIMEOUT:I

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    if-eqz p2, :cond_2f

    .line 98
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    .line 99
    sget-object p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handler "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_36

    .line 101
    :cond_2f
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    :goto_36
    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    return-void
.end method


# virtual methods
.method public keyDown(ILandroid/view/KeyEvent;)V
    .registers 10

    .line 122
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-nez v0, :cond_47

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    if-eqz p2, :cond_34

    .line 127
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sget p2, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAP_TIMEOUT:I

    int-to-long v5, p2

    add-long/2addr v3, v5

    sget p2, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v5, p2

    add-long/2addr v3, v5

    .line 127
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_47

    .line 130
    :cond_34
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget v2, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAP_TIMEOUT:I

    sget v3, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->LONGPRESS_TIMEOUT:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    :cond_47
    :goto_47
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    if-eqz p2, :cond_60

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_60

    iget p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    if-ne p2, p1, :cond_60

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    :cond_60
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    return-void
.end method

.method public keyUp(ILandroid/view/KeyEvent;)V
    .registers 5

    .line 147
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    const/4 v0, 0x0

    if-nez p2, :cond_12

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_a

    goto :goto_12

    .line 162
    :cond_a
    sget-object p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "call keyUp before keyDown,long press maybe out of times"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5c

    .line 148
    :cond_12
    :goto_12
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsLongPressEnabled:Z

    if-eqz p2, :cond_4f

    .line 149
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mInLongPress:Z

    if-eqz p2, :cond_41

    iget p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mLongPresskeyCode:I

    if-eq p2, p1, :cond_32

    const/16 p2, 0x2d7

    if-eq p2, p1, :cond_32

    const/16 p2, 0x2e1

    if-ne p2, p1, :cond_41

    .line 154
    :cond_32
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5c

    .line 156
    :cond_41
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5c

    .line 159
    :cond_4f
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    :goto_5c
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    return-void
.end method

.method public shoulderButtonKeySwiping(ZI)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mCallback:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onShoulderButtonSwiping(ZI)V

    return-void
.end method

.method public shoulderButtonSwipeUp(I)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mHandler:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->mIsKeyDown:Z

    return-void
.end method
