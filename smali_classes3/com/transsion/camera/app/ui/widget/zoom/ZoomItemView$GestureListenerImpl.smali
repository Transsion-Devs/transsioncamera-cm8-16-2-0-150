.class Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmIsSwitching(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 655
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomItemViewLongPress(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmIsSwitching(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_72

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmVideoRecordStopping(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_72

    .line 665
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomTextViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5a

    .line 666
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmIsRecording(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmIsSatCamera(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomTextViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V

    goto :goto_59

    .line 669
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$minRecordingRange(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomTextViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V

    goto :goto_59

    .line 672
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomItemViewLongPress(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    goto :goto_59

    .line 675
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomTextViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V

    :goto_59
    return v0

    .line 678
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_70

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmZoomFocalViewRoot(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$monZoomFocalViewClick(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;Landroid/view/View;)V

    return v0

    :cond_70
    const/4 p0, 0x0

    return p0

    .line 661
    :cond_72
    :goto_72
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp,mVideoRecordStopping:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->-$$Nest$fgetmVideoRecordStopping(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method
