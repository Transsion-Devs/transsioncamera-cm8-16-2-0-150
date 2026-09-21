.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initValue(Landroid/content/Context;)V
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

    .line 461
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    .line 464
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$1000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFixedFlingValue()F

    move-result p3

    add-float/2addr p2, p3

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$902(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 465
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$1100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    return-void
.end method
