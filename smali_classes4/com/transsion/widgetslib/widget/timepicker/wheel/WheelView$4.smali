.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->animResetAmpmLocation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .registers 2

    .line 2578
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 2581
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 2582
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_18

    .line 2583
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$902(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 2584
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$1100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    :cond_18
    return-void
.end method
