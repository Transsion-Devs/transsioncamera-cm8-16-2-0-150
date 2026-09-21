.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 496
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->-$$Nest$fgetmPauseResumeButton(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->-$$Nest$fgetmPauseResumeButton(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
