.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 390
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$mresumePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmGuideContainer(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmUnfoldPlaySwitch(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x11f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
