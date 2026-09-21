.class Lcom/transsion/camera/app/ui/FullZoomUIItel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;Z)V
    .registers 3

    .line 636
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 653
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->val$fadeOut:Z

    if-eqz p1, :cond_d

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 646
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->val$fadeOut:Z

    if-eqz p1, :cond_d

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 639
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmVideRecording(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 640
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    return-void
.end method
