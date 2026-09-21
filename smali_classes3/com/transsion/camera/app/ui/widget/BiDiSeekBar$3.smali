.class Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;
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

    .line 1069
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmCurrentThumbInHalfWidth(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    .line 1073
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
