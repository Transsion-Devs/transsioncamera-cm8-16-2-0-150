.class Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbInScaleAnimator(FF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V
    .registers 2

    .line 1035
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmCurrentThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    .line 1040
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmMaxThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_36

    .line 1041
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmCurrentThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmMaxThumbStokeScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmMaxThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmCurrentThumbOutScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    .line 1043
    :cond_36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
