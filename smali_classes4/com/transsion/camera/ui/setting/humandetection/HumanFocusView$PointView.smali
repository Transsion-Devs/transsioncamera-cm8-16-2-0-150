.class Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointView"
.end annotation


# instance fields
.field point:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;Landroid/content/Context;)V
    .registers 3

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    .line 306
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 307
    sget p1, Lcom/transsion/camera/R$drawable;->ic_human_focus_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 327
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p3

    .line 330
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->-$$Nest$fgetSQUARE_WIDTH(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->-$$Nest$fgetSQUARE_WIDTH(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPoint(Landroid/graphics/Point;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    return-void
.end method
