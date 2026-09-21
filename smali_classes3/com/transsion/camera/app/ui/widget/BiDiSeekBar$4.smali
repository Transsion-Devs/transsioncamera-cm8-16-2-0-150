.class Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
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

    .line 1119
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmFromThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmToThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmFromThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_44

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmFromThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v1

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmCenterThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmFromThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmCurrentThumbInHalfWidth(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    goto :goto_5e

    .line 1127
    :cond_44
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmCenterThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v3

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmToThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmCenterThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmCurrentThumbInHalfWidth(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V

    .line 1129
    :goto_5e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fgetmNeedDragEnd(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$mtrackTouchEvent(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;FZ)V

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
