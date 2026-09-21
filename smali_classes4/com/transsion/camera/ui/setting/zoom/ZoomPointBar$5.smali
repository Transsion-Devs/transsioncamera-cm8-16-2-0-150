.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCurrentType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->onLongPressed()Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_23

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_23

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCurrentType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->onLongPressed()Z

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmIsScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V

    :cond_23
    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 596
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mhandleSingleTapUp(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
