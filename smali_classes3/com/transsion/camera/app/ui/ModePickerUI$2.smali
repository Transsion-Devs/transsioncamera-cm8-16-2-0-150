.class Lcom/transsion/camera/app/ui/ModePickerUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->startModePickerUIAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;I)V
    .registers 3

    .line 677
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->val$orientation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 699
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_16
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    .line 680
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 681
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->val$orientation:I

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ModePickerUI;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateLayoutParams(Lcom/transsion/camera/app/ui/ModePickerUI;IIZ)V

    .line 682
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mchooseModeUIToShow(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;Landroid/animation/ObjectAnimator;)V

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$2$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$2$1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$2;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerIn(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
