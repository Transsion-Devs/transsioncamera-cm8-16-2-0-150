.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->runFullZoomUIRotateAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 2

    .line 1826
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1829
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1830
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)I

    move-result p1

    .line 1831
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1832
    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)I

    move-result p1

    goto :goto_23

    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)I

    move-result p1

    .line 1834
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$mupdateFullZoomUILayout(Lcom/transsion/camera/app/ui/FrontWideCameraUI;ZI)V

    .line 1835
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmFullZoomIn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
