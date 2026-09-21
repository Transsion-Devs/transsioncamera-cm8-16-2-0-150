.class Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->runOrientationAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 506
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$fgetmActionsPanel(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->-$$Nest$fgetmAnimatorIn(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
