.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaSkeletonAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$aniSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Landroid/animation/AnimatorSet;)V
    .registers 3

    .line 693
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$6;->val$aniSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 702
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 703
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 696
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$6;->val$aniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
