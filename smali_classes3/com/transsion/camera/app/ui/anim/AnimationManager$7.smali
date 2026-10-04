.class Lcom/transsion/camera/app/ui/anim/AnimationManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 2

    .line 692
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 720
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmCurrentFlipPreviewView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 723
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startFlipAnim Cancel"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 704
    const-string p1, "animator:camera_switch_flip"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/AnimationTrace;->endASync(Ljava/lang/String;I)V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 706
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmCurrentFlipPreviewView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 708
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    goto :goto_2f

    .line 710
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mstartFlipHideCoverAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    .line 712
    :goto_2f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->switchAnimEnd()V

    .line 715
    :cond_40
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

    .line 695
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmCurrentFlipPreviewView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmSwitchAnimStart(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmIsSwitchAnim(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V

    .line 698
    const-string p0, "animator:camera_switch_flip"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/AnimationTrace;->beginAsync(Ljava/lang/String;I)V

    .line 699
    invoke-static {}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "startFlipAnim Start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
