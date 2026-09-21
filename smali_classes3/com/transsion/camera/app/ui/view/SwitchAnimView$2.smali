.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 318
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 327
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fputmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    :cond_21
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 337
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fputmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    :cond_21
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
