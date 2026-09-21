.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->updatePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

.field final synthetic val$targetRotation:F

.field final synthetic val$targetTranslationX:F

.field final synthetic val$targetTranslationY:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;FFF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetTranslationX:F

    iput p3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetTranslationY:F

    iput p4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetRotation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetTranslationX:F

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetTranslationY:F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 425
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6b

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6b

    .line 426
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 428
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_97

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_97

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->val$targetRotation:F

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    sub-float/2addr v2, p0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
