.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;
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

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V
    .registers 3

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$mupdateTargetRect(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fputmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    :cond_20
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 364
    const-string p1, "animator:preview_rect_update"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/AnimationTrace;->endASync(Ljava/lang/String;I)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$mupdateTargetRect(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$fputmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Lcom/transsion/camera/app/ui/IAnimProgressListener;)V

    :cond_26
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 349
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 350
    const-string p0, "animator:preview_rect_update"

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/AnimationTrace;->beginAsync(Ljava/lang/String;I)V

    return-void
.end method
