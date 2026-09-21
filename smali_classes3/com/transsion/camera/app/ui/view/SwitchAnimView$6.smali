.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;->createFadeBlurAnimator(Z[Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field final synthetic val$blurAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->val$blurAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 518
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmIsFadeBlurAnimReStart(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 519
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 520
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[createFadeBlurAnimator] onAnimationEnd: set tag null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 522
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fputmIsFadeBlurAnimReStart(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->val$blurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 528
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createFadeBlurAnimator] onAnimationStart: set tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;->val$blurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
