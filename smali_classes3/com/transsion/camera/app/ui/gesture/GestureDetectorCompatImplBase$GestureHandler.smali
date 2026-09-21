.class Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    .line 64
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_35

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1e

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p1, :cond_1d

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez v0, :cond_1b

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p1, p0}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    return-void

    .line 84
    :cond_1b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    :cond_1d
    return-void

    .line 90
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->dispatchLongPress()V

    return-void

    .line 71
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p1, p0}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method
