.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 438
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 441
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsNeedMaxPull:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 442
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$200(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_60

    .line 446
    :cond_20
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$300(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    .line 448
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-float v2, v1, v2

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F
    invoke-static {v3, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$402(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 449
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$400(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxDownPull:F
    invoke-static {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$502(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 452
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    div-float/2addr v1, v5

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$700(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxUpPull:F
    invoke-static {v3, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$602(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 453
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    neg-float v0, v2

    div-float/2addr v0, v5

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxDownPull:F
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$802(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    :cond_60
    :goto_60
    return-void
.end method
