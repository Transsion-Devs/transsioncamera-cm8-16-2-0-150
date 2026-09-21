.class public Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/FloatingShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    .line 620
    invoke-static {}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPress\uff0c mIsEditMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmEnableFloating(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V

    .line 624
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->removeFloatingShutterLayoutDelay()V

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmFloatingShutterEditLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startLongPressScaleAnimator()V

    :cond_45
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmEnableFloating(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 598
    invoke-static {}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapUp: shutter ui is processing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 601
    :cond_1f
    invoke-static {}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmFloatingShutterEditLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmFloatingShutterEditLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_84

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startAnimator()V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fputmCurrentAlpha(Lcom/transsion/camera/app/ui/view/FloatingShutterView;F)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmFloatingShutterLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0

    :cond_84
    return v0
.end method
