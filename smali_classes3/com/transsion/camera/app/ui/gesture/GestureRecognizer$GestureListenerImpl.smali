.class Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmNeedDoubleTap(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmNeedDoubleTap(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fputmInitialTouchEvent(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Landroid/view/MotionEvent;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fputmDy(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)V

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fputmDx(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetACTION_STATE_DRAG(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$mselect(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;I)V

    :cond_2c
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmNeedDoubleTap(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
