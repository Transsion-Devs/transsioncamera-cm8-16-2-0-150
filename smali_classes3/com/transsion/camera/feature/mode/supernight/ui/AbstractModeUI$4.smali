.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 356
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewCover(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizerOrigin(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 365
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewCover(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizerOrigin(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 374
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewCover(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizerOrigin(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizerOrigin(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputxPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputyPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputzPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$mupdateDevicePosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmOffsetXAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmStartAngleX(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmOffsetYAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmStartAngleY(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmOffsetZAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fputmStartAngleZ(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V

    return-void
.end method
