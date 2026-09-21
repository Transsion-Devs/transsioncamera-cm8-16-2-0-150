.class Lcom/transsion/camera/app/ui/FullZoomUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->translateWideCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

.field final synthetic val$fadeAnimatorZoomText:Landroid/animation/ObjectAnimator;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;ZLandroid/animation/ObjectAnimator;)V
    .registers 4

    .line 1196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    iput-object p3, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeAnimatorZoomText:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1214
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    if-eqz p1, :cond_b

    .line 1215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 1217
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeAnimatorZoomText:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeAnimatorZoomText:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1207
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    if-eqz p1, :cond_b

    .line 1208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_b
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-nez p1, :cond_36

    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    .line 1200
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result p1

    if-nez p1, :cond_36

    .line 1201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_36
    return-void
.end method
