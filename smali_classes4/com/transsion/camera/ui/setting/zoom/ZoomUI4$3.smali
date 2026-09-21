.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemWidth(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

.field final synthetic val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 1507
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 1510
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateZoomItemWidth] animation cancel zoomItemRootParams.width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1512
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmPreTotalWith(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)I

    move-result v0

    if-eq p1, v0, :cond_40

    .line 1513
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmPreTotalWith(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1514
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1520
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1521
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateZoomItemWidth] animation end zoomItemRootParams.width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1522
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmPreTotalWith(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)I

    move-result v0

    if-eq p1, v0, :cond_40

    .line 1523
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmPreTotalWith(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1524
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;->val$zoomItemRootParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    return-void
.end method
