.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 2

    .line 818
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 832
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 833
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailSkeletonRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailSkeletonRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_20

    .line 835
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailSkeletonRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startAlphaSkeletonAnimationIfNeed(Landroid/widget/LinearLayout;)V

    .line 837
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 821
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 822
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmTopMaskView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailList(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailFailedRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 825
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailSkeletonRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 827
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setEnable(Z)V

    return-void
.end method
