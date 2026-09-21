.class Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 190
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->-$$Nest$msetPortraitSpotScaleGroupVisibility(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 196
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->-$$Nest$msetPortraitSpotScaleGroupVisibility(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 182
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->-$$Nest$fgetmIsScaleBarVisible(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method
