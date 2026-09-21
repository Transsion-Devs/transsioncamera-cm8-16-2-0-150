.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->translateWideCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V
    .registers 3

    .line 877
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 894
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->val$fadeOut:Z

    if-eqz p1, :cond_b

    .line 895
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_b
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 887
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->val$fadeOut:Z

    if-eqz p1, :cond_b

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

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

    .line 880
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-nez p1, :cond_36

    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    .line 881
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result p1

    if-nez p1, :cond_36

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_36
    return-void
.end method
