.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->playAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 1709
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1712
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1713
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I
    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$mupdateTopBarLayoutParams(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;II)V

    .line 1715
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$600(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fputmTopBarIn(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Landroid/animation/ObjectAnimator;)V

    .line 1716
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmTopBarIn(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$sfgetANIMATOR_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1717
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmTopBarIn(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
