.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
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

    .line 1019
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1022
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateScroller()V

    .line 1023
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->runScroller()V

    .line 1024
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$1000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1025
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method
