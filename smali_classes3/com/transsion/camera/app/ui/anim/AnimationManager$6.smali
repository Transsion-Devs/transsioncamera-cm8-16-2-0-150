.class Lcom/transsion/camera/app/ui/anim/AnimationManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field final synthetic val$previewView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;)V
    .registers 3

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$previewView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 675
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$previewView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 677
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startFlipAnim Cancel"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 659
    const-string p1, "animator:camera_switch_flip"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/AnimationTrace;->endASync(Ljava/lang/String;I)V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$previewView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 663
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    goto :goto_21

    .line 665
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mstartFlipHideCoverAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    .line 667
    :goto_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->switchAnimEnd()V

    .line 670
    :cond_32
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startFlipAnim End"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 650
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->val$previewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmIsSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 653
    const-string p0, "animator:camera_switch_flip"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/AnimationTrace;->beginAsync(Ljava/lang/String;I)V

    .line 654
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startFlipAnim Start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
